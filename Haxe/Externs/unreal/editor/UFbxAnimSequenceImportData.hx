/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.editor;


/**
  Import data and options used when importing any mesh from FBX
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Factories/FbxAnimSequenceImportData.h")
@:uextern extern class UFbxAnimSequenceImportData extends unreal.editor.UFbxAssetImportData {
  
  /**
    If enabled, this will delete this type of asset from the FBX
  **/
  public var bDeleteExistingMorphTargetCurves : Bool;
  
  /**
    If enabled, this will import a curve within the animation
  **/
  public var bPreserveLocalTransform : Bool;
  
  /**
    Import if custom attribute as a curve within the animation
  **/
  public var bImportCustomAttribute : Bool;
  
  /**
    Name of source animation that was imported, used to reimport correct animation from the FBX file
  **/
  public var SourceAnimationName : unreal.FString;
  
  /**
    If enabled, samples all animation curves to 30 FPS
  **/
  public var bUseDefaultSampleRate : Bool;
  
  /**
    Frame range used when Set Range is used in Animation Length
  **/
  public var FrameImportRange : unreal.FInt32Interval;
  
  /**
    End frame when Set Range is used in Animation Length
  **/
  @:deprecated public var EndFrame_DEPRECATED : unreal.Int32;
  
  /**
    Start frame when Set Range is used in Animation Length
  **/
  @:deprecated public var StartFrame_DEPRECATED : unreal.Int32;
  
  /**
    Which animation range to import. The one defined at Exported, at Animated time or define a range manually
  **/
  public var AnimationLength : unreal.editor.EFBXAnimationLengthImportType;
  
}
