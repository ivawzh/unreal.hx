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
package unreal.vputilities;

@:umodule("VPUtilities")
@:glueCppIncludes("VPCameraBlueprintLibrary.h")
@:uextern @:uclass extern class UVPCameraBlueprintLibrary extends unreal.UBlueprintFunctionLibrary {
  @:ufunction(BlueprintCallable) static public function SpawnDollyTrackFromPoints(WorldContextObject : unreal.UObject, Points : unreal.Const<unreal.PRef<unreal.TArray<unreal.FTransform>>>, InterpType : unreal.ESplinePointType = Linear) : unreal.cinematiccamera.ACameraRig_Rail;
  @:ufunction(BlueprintCallable) static public function SpawnDollyTrackFromPointsSmooth(WorldContextObject : unreal.UObject, Points : unreal.Const<unreal.PRef<unreal.TArray<unreal.FTransform>>>, InterpType : unreal.ESplinePointType = Linear) : unreal.cinematiccamera.ACameraRig_Rail;
  @:ufunction(BlueprintCallable) static public function SpawnCameraRigFromActors(WorldContextObject : unreal.UObject, RigTransform : unreal.Const<unreal.PRef<unreal.FTransform>>, Actors : unreal.Const<unreal.PRef<unreal.TArray<unreal.AActor>>>, Params : unreal.Const<unreal.PRef<unreal.vputilities.FVPCameraRigSpawnParams>>) : unreal.cinematiccamera.ACameraRig_Rail;
  @:ufunction(BlueprintCallable) static public function SpawnCameraRigFromPoints(WorldContextObject : unreal.UObject, RigTransform : unreal.Const<unreal.PRef<unreal.FTransform>>, Points : unreal.Const<unreal.PRef<unreal.TArray<unreal.FVector>>>, Params : unreal.Const<unreal.PRef<unreal.vputilities.FVPCameraRigSpawnParams>>) : unreal.cinematiccamera.ACameraRig_Rail;
  @:ufunction(BlueprintCallable) static public function SpawnCameraRigFromSelectedActors(WorldContextObject : unreal.UObject, RigTransform : unreal.Const<unreal.PRef<unreal.FTransform>>, Params : unreal.Const<unreal.PRef<unreal.vputilities.FVPCameraRigSpawnParams>>) : unreal.cinematiccamera.ACameraRig_Rail;
  
}