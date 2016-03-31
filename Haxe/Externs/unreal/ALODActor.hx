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
package unreal;


/**
  LODActor is an instance of an autogenerated StaticMesh Actors by Hierarchical LOD System
  This is essentially just StaticMeshActor that you can't move or edit, but it contains multiple actors reference
  
  @see https://docs.unrealengine.com/latest/INT/Engine/Actors/LODActor/
  @see UStaticMesh
**/
@:glueCppIncludes("Engine/LODActor.h")
@:uextern extern class ALODActor extends unreal.AActor {
  #if WITH_EDITORONLY_DATA
  
  /**
    Override screen size value, used when creating the proxy mesh
  **/
  public var ScreenSize : unreal.Int32;
  
  /**
    Flag whether or not to use the override ScreenSize when creating the proxy mesh
  **/
  public var bOverrideScreenSize : Bool;
  
  /**
    Override transition screen size value, determines the screen size / draw distance at which the proxy mesh is visible
  **/
  public var TransitionScreenSize : unreal.Float32;
  
  /**
    Flag whether or not to use the override TransitionScreenSize for this proxy mesh
  **/
  public var bOverrideTransitionScreenSize : Bool;
  
  /**
    Override Material Settings, used when creating the proxy mesh
  **/
  public var MaterialSettings : unreal.FMaterialProxySettings;
  
  /**
    Flag whether or not to use the override MaterialSettings when creating the proxy mesh
  **/
  public var bOverrideMaterialMergeSettings : Bool;
  
  /**
    Cached number of triangles contained in the SubActors
  **/
  public var NumTrianglesInMergedMesh : unreal.FakeUInt32;
  
  /**
    Cached number of triangles contained in the SubActors
  **/
  public var NumTrianglesInSubActors : unreal.FakeUInt32;
  #end // WITH_EDITORONLY_DATA
  
  /**
    assets that were created for this, so that we can delete them
  **/
  public var SubObjects : unreal.TArray<unreal.UObject>;
  
  /**
    what distance do you want this to show up instead of SubActors
  **/
  public var LODLevel : unreal.Int32;
  
  /**
    what distance do you want this to show up instead of SubActors
  **/
  public var LODDrawDistance : unreal.Float32;
  public var SubActors : unreal.TArray<unreal.AActor>;
  
  /**
    disable display of this component
  **/
  public var StaticMeshComponent : unreal.UStaticMeshComponent;
  
}
