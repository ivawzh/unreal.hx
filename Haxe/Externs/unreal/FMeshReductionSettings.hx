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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Settings used to reduce a mesh.
**/
@:glueCppIncludes("Engine/StaticMesh.h")
@:noCopy @:noEquals @:uextern extern class FMeshReductionSettings {
  
  /**
    Higher values minimize change to vertex color data.
  **/
  public var VertexColorImportance : unreal.EMeshFeatureImportance;
  
  /**
    Higher values generates fewer samples
  **/
  public var VisibilityAggressiveness : unreal.EMeshFeatureImportance;
  public var bCullOccluded : Bool;
  public var bVisibilityAided : Bool;
  public var bKeepSymmetry : Bool;
  public var bGenerateUniqueLightmapUVs : Bool;
  public var BaseLODModel : unreal.Int32;
  
  /**
    UPROPERTY(EditAnywhere, Category = ReductionSettings)
           bool bActive;
  **/
  public var bRecalculateNormals : Bool;
  
  /**
    Higher values try to preserve normals better.
  **/
  public var ShadingImportance : unreal.EMeshFeatureImportance;
  
  /**
    Higher values reduce texture stretching.
  **/
  public var TextureImportance : unreal.EMeshFeatureImportance;
  
  /**
    Higher values minimize change to border edges.
  **/
  public var SilhouetteImportance : unreal.EMeshFeatureImportance;
  
  /**
    Angle at which a hard edge is introduced between faces.
  **/
  public var HardAngleThreshold : unreal.Float32;
  
  /**
    Threshold in object space at which vertices are welded together.
  **/
  public var WeldingThreshold : unreal.Float32;
  
  /**
    The maximum distance in object space by which the reduced mesh may deviate from the original mesh.
  **/
  public var MaxDeviation : unreal.Float32;
  
  /**
    Percentage of triangles to keep. 1.0 = no reduction, 0.0 = no triangles.
  **/
  public var PercentTriangles : unreal.Float32;
  
}
