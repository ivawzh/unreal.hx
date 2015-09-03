package ue4hx.internal;
import haxe.io.Path;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import sys.FileSystem;

using StringTools;

/**
  Takes care of generating the native glue code - both header and source files
 **/
class GlueCode
{
  public static function onGenerate(types:Array<Type>) {
    var haxeRuntimeDir = Context.definedValue('haxe_runtime_dir');
    if (haxeRuntimeDir == null) {
      Context.warning('Unreal Glue: The haxe_runtime_dir directive is not set. This compilation may fail', Context.currentPos());
      return;
    }
    haxeRuntimeDir += '/Generated';

    for (type in types) {
      switch(type) {
      case TInst(c,tl) if (c.toString().startsWith('unreal.glue')):
        var cl = c.get();
        if (!cl.meta.has(':unrealGlue'))
          continue;
        var baseDir = '$haxeRuntimeDir/${cl.pack.join('/')}';
        if (!FileSystem.exists(baseDir)) FileSystem.createDirectory(baseDir);
        baseDir = FileSystem.fullPath(baseDir);
        var basePath = '$baseDir/${cl.name}';
        var headerPath = basePath + '.h';
        cl.meta.add(':include', [macro $v{headerPath}], cl.pos);

        var writer = new GlueWriter(headerPath, basePath + '.cpp', c.toString());
        writer.addCppInclude(headerPath);
        for (pack in cl.pack) {
          writer.wboth('namespace $pack {\n');
        }
        writer.wh('class ${cl.name}_obj {\n\tpublic:\n');
        for (inc in extract(cl.meta, 'glueHeaderIncludes'))
          writer.addHeaderInclude(inc);

        for (inc in extract(cl.meta, 'glueCppIncludes'))
          writer.addCppInclude(inc);

        for (field in cl.statics.get()) {
          var glueHeaderCode = extract(field.meta, 'glueHeaderCode')[0];
          writer.wh('\t\t$glueHeaderCode\n');
          for (inc in extract(field.meta, 'glueHeaderIncludes'))
            writer.addHeaderInclude(inc);

          var glueCppCode = extract(field.meta, 'glueCppCode')[0];
          writer.wcpp(glueCppCode);
          writer.wcpp('\n');
          for (inc in extract(field.meta, 'glueCppIncludes'))
            writer.addCppInclude(inc);
        }
        writer.wh('};\n\n');

        for (pack in cl.pack) {
          writer.wboth('}\n');
        }
        writer.close();
      case _:
      }
    }
  }

  private static function extract(meta:MetaAccess, name:String):Array<String> {
    var meta = meta.extract(name);
    if (meta == null || meta.length == 0 || meta[0].params == null || meta[0].params.length == 0)
      return [];
    var ret = [];
    for (param in meta[0].params) {
      switch(param.expr) {
        case EConst(CString(s)):
          ret.push(s);
        case _:
          throw 'assert';
      }
    }
    return ret;
  }
}
