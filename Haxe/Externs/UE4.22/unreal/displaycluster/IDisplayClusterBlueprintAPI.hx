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
package unreal.displaycluster;

@:umodule("DisplayCluster")
@:glueCppIncludes("Blueprints/IDisplayClusterBlueprintAPI.h")
@:uextern @:uclass extern interface IDisplayClusterBlueprintAPI {
  
  /**
    Return if the module has been initialized.
  **/
  @:ufunction(BlueprintCallable) public function IsModuleInitialized() : Bool;
  
  /**
    Return current operation mode.
  **/
  @:ufunction(BlueprintCallable) public function GetOperationMode() : unreal.displaycluster.EDisplayClusterOperationMode;
  
  /**
    Return if current node is a master computer in cluster.
  **/
  @:ufunction(BlueprintCallable) public function IsMaster() : Bool;
  
  /**
    Return if current node is not a master computer in cluster.
  **/
  @:ufunction(BlueprintCallable) public function IsSlave() : Bool;
  
  /**
    Whether application is in cluster mode or not.
  **/
  @:ufunction(BlueprintCallable) public function IsCluster() : Bool;
  
  /**
    Whether application is in standalone mode or not.
  **/
  @:ufunction(BlueprintCallable) public function IsStandalone() : Bool;
  
  /**
    Returns node name of the current application instance.
  **/
  @:ufunction(BlueprintCallable) public function GetNodeId() : unreal.FString;
  
  /**
    Returns amount of nodes in cluster.
  **/
  @:ufunction(BlueprintCallable) public function GetNodesAmount() : unreal.Int32;
  
  /**
    Returns amount of nodes in cluster.
  **/
  @:ufunction(BlueprintCallable) public function EmitClusterEvent(Event : unreal.Const<unreal.PRef<unreal.displaycluster.FDisplayClusterClusterEvent>>, MasterOnly : Bool) : Void;
  
  /**
    Returns Cluster Pawn.
  **/
  @:ufunction(BlueprintCallable) public function GetRoot() : unreal.displaycluster.ADisplayClusterPawn;
  
  /**
    Returns screen reference used for computing frustum output.
  **/
  @:ufunction(BlueprintCallable) public function GetActiveScreens() : unreal.TArray<unreal.displaycluster.UDisplayClusterScreenComponent>;
  
  /**
    Returns screen reference by id name.
  **/
  @:ufunction(BlueprintCallable) public function GetScreenById(id : unreal.FString) : unreal.displaycluster.UDisplayClusterScreenComponent;
  
  /**
    Returns array of all screen references.
  **/
  @:ufunction(BlueprintCallable) public function GetAllScreens() : unreal.TArray<unreal.displaycluster.UDisplayClusterScreenComponent>;
  
  /**
    Returns amount of screens defined in configuration file.
  **/
  @:ufunction(BlueprintCallable) public function GetScreensAmount() : unreal.Int32;
  
  /**
    Returns node reference by its id name.
  **/
  @:ufunction(BlueprintCallable) public function GetNodeById(id : unreal.FString) : unreal.displaycluster.UDisplayClusterSceneComponent;
  
  /**
    Returns array of all nodes references by its id name.
  **/
  @:ufunction(BlueprintCallable) public function GetAllNodes() : unreal.TArray<unreal.displaycluster.UDisplayClusterSceneComponent>;
  
  /**
    Returns scene component used for default pawn navigation.
  **/
  @:ufunction(BlueprintCallable) public function GetTranslationDirectionComponent() : unreal.USceneComponent;
  
  /**
    Set scene component to be used for default pawn navigation.
  **/
  @:ufunction(BlueprintCallable) public function SetTranslationDirectionComponent(pComp : unreal.USceneComponent) : Void;
  
  /**
    Set scene component to be used for default pawn navigation by id name.
  **/
  @:ufunction(BlueprintCallable) public function SetTranslationDirectionComponentId(id : unreal.FString) : Void;
  
  /**
    Return scene component used as a pivot point for rotation of the scene node hierarchy.
  **/
  @:ufunction(BlueprintCallable) public function GetRotateAroundComponent() : unreal.USceneComponent;
  
  /**
    Set scene component used as a pivot point for rotation of the scene node hierarchy.
  **/
  @:ufunction(BlueprintCallable) public function SetRotateAroundComponent(pComp : unreal.USceneComponent) : Void;
  
  /**
    Set scene component used as a pivot point for rotation of the scene node hierarchy by id name.
  **/
  @:ufunction(BlueprintCallable) public function SetRotateAroundComponentId(id : unreal.FString) : Void;
  
  /**
    Return amount of VRPN axis devices.
  **/
  @:ufunction(BlueprintCallable) public function GetAxisDeviceAmount() : unreal.Int32;
  
  /**
    Return amount of VRPN button devices.
  **/
  @:ufunction(BlueprintCallable) public function GetButtonDeviceAmount() : unreal.Int32;
  
  /**
    Return amount of VRPN tracker devices.
  **/
  @:ufunction(BlueprintCallable) public function GetTrackerDeviceAmount() : unreal.Int32;
  
  /**
    Return array of names of all VRPN axis devices.
  **/
  @:ufunction(BlueprintCallable) public function GetAxisDeviceIds(IDs : unreal.PRef<unreal.TArray<unreal.FString>>) : Bool;
  
  /**
    Return array of names of all VRPN button devices.
  **/
  @:ufunction(BlueprintCallable) public function GetButtonDeviceIds(IDs : unreal.PRef<unreal.TArray<unreal.FString>>) : Bool;
  
  /**
    Return array of names of all VRPN tracker devices.
  **/
  @:ufunction(BlueprintCallable) public function GetTrackerDeviceIds(IDs : unreal.PRef<unreal.TArray<unreal.FString>>) : Bool;
  
  /**
    Return state of VRPN button at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function GetButtonState(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, CurState : Bool, IsChannelAvailable : Bool) : Void;
  
  /**
    Return whether VRPN button is pressed at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function IsButtonPressed(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, CurPressed : Bool, IsChannelAvailable : Bool) : Void;
  
  /**
    Return whether VRPN button is released at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function IsButtonReleased(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, CurReleased : Bool, IsChannelAvailable : Bool) : Void;
  
  /**
    Return whether VRPN button was released at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function WasButtonPressed(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, WasPressed : Bool, IsChannelAvailable : Bool) : Void;
  
  /**
    Return whether VRPN button was released at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function WasButtonReleased(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, WasReleased : Bool, IsChannelAvailable : Bool) : Void;
  
  /**
    Return axis value at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function GetAxis(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, Value : unreal.Float32, IsAvailable : Bool) : Void;
  
  /**
    Return tracker location values at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function GetTrackerLocation(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, Location : unreal.PRef<unreal.FVector>, IsChannelAvailable : Bool) : Void;
  
  /**
    Return tracker quanternion values at specified device and channel.
  **/
  @:ufunction(BlueprintCallable) public function GetTrackerQuat(DeviceId : unreal.FString, DeviceChannel : unreal.UInt8, Rotation : unreal.PRef<unreal.FQuat>, IsChannelAvailable : Bool) : Void;
  
  /**
    Set eye interpupillary distance (eye separation) for stereoscopic rendering.
  **/
  @:ufunction(BlueprintCallable) public function SetInterpupillaryDistance(dist : unreal.Float32) : Void;
  
  /**
    Return eye interpupillary distance (eye separation) for stereoscopic rendering.
  **/
  @:ufunction(BlueprintCallable) public function GetInterpupillaryDistance() : unreal.Float32;
  
  /**
    Swap eye rendering.
  **/
  @:ufunction(BlueprintCallable) public function SetEyesSwap(swap : Bool) : Void;
  
  /**
    Get Swap eye rendering state.
  **/
  @:ufunction(BlueprintCallable) public function GetEyesSwap() : Bool;
  
  /**
    Toggle current eye swap state.
  **/
  @:ufunction(BlueprintCallable) public function ToggleEyesSwap() : Bool;
  
  /**
    Return near and far plane clip plane distances.
  **/
  @:ufunction(BlueprintCallable) public function GetCullingDistance(NearClipPlane : unreal.Float32, FarClipPlane : unreal.Float32) : Void;
  
  /**
    Set near and far plane clip plane distances.
  **/
  @:ufunction(BlueprintCallable) public function SetCullingDistance(NearClipPlane : unreal.Float32, FarClipPlane : unreal.Float32) : Void;
  
}