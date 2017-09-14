/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.clothpainter;

/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, some of its methods are inaccessible
  
  
**/
@:umodule("ClothPainter")
@:glueCppIncludes("Private/ClothPaintSettings.h")
@:noClass @:uextern @:uclass extern class UClothPainterSettings extends unreal.meshpaint.UMeshPaintSettings {
  
  /**
    Opacity of the mesh preview
  **/
  @:uproperty public var Opacity : unreal.Float32;
  
  /**
    Whether to bull backfacing triangles when rendering the mesh preview
  **/
  @:uproperty public var bCullBackface : Bool;
  
  /**
    Whether to flip normals on the mesh preview
  **/
  @:uproperty public var bFlipNormal : Bool;
  
  /**
    Array of Clothing assets
  **/
  @:uproperty public var ClothingAssets : unreal.TArray<unreal.clothingsystemruntime.UClothingAsset>;
  
  /**
    When painting float/1D values, this is considered the one or white point
  **/
  @:uproperty private var ViewMax : unreal.Float32;
  
  /**
    When painting float/1D values, this is considered the zero or black point
  **/
  @:uproperty private var ViewMin : unreal.Float32;
  
}