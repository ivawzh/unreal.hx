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
package unreal.geometrycache;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  GeometryCache actor, serves as a place-able actor for GeometryCache objects
**/
@:umodule("GeometryCache")
@:glueCppIncludes("GeometryCacheActor.h")
@:uextern extern class AGeometryCacheActor extends unreal.AActor {
  
  /**
    End AActor overrides.
  **/
  public var GeometryCacheComponent : unreal.geometrycache.UGeometryCacheComponent;
  
}
