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

@:glueCppIncludes("Kismet/HeadMountedDisplayFunctionLibrary.h")
@:uextern extern class UHeadMountedDisplayFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Returns whether or not we are currently using the head mounted display.
    
    @return (Boolean)  status of HMD
  **/
  static public function IsHeadMountedDisplayEnabled() : Bool;
  
  /**
    Switches to/from using HMD and stereo rendering.
    
    @param bEnable                       (in) 'true' to enable HMD / stereo; 'false' otherwise
    @return (Boolean)            True, if the request was successful.
  **/
  static public function EnableHMD(bEnable : Bool) : Bool;
  
  /**
    Grabs the current orientation and position for the HMD.  If positional tracking is not available, DevicePosition will be a zero vector
    
    @param DeviceRotation        (out) The device's current rotation
    @param DevicePosition        (out) The device's current position, in its own tracking space
  **/
  static public function GetOrientationAndPosition(DeviceRotation : unreal.PRef<unreal.FRotator>, DevicePosition : unreal.PRef<unreal.FVector>) : Void;
  
  /**
    If the HMD supports positional tracking, whether or not we are currently being tracked
  **/
  static public function HasValidTrackingPosition() : Bool;
  
  /**
    If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking.
    This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.
    
    @param CameraOrigin          (out) Origin, in world-space, of the sensor
    @param CameraRotation        (out) Rotation, in world-space, of the sensor
    @param HFOV                          (out) Field-of-view, horizontal, in degrees, of the valid tracking zone of the sensor
    @param VFOV                          (out) Field-of-view, vertical, in degrees, of the valid tracking zone of the sensor
    @param CameraDistance        (out) Nominal distance to sensor, in world-space
    @param NearPlane                     (out) Near plane distance of the tracking volume, in world-space
    @param FarPlane                      (out) Far plane distance of the tracking volume, in world-space
  **/
  static public function GetPositionalTrackingCameraParameters(CameraOrigin : unreal.PRef<unreal.FVector>, CameraRotation : unreal.PRef<unreal.FRotator>, HFOV : unreal.Float32, VFOV : unreal.Float32, CameraDistance : unreal.Float32, NearPlane : unreal.Float32, FarPlane : unreal.Float32) : Void;
  
  /**
    Returns true, if HMD is in low persistence mode. 'false' otherwise.
  **/
  static public function IsInLowPersistenceMode() : Bool;
  
  /**
    Switches between low and full persistence modes.
    
    @param bEnable                       (in) 'true' to enable low persistence mode; 'false' otherwise
  **/
  static public function EnableLowPersistenceMode(bEnable : Bool) : Void;
  
  /**
    Resets orientation by setting roll and pitch to 0, assuming that current yaw is forward direction and assuming
    current position as a 'zero-point' (for positional tracking).
    
    @param Yaw                           (in) the desired yaw to be set after orientation reset.
    @param Options                       (in) specifies either position, orientation or both should be reset.
  **/
  static public function ResetOrientationAndPosition(Yaw : unreal.Float32, Options : unreal.EOrientPositionSelector) : Void;
  
  /**
    Sets near and far clipping planes (NCP and FCP) for stereo rendering. Similar to 'stereo ncp= fcp' console command, but NCP and FCP set by this
    call won't be saved in .ini file.
    
    @param Near                          (in) Near clipping plane, in centimeters
    @param Far                           (in) Far clipping plane, in centimeters
  **/
  static public function SetClippingPlanes(Near : unreal.Float32, Far : unreal.Float32) : Void;
  
  /**
    Returns screen percentage to be used in VR mode.
    
    @return (float)      The screen percentage to be used in VR mode.
  **/
  static public function GetScreenPercentage() : unreal.Float32;
  
  /**
    Sets the World to Meters scale, which changes the scale of the world as perceived by the player
    
    @param NewScale       Specifies how many Unreal units correspond to one meter in the real world
  **/
  static public function SetWorldToMetersScale(WorldContext : unreal.UObject, NewScale : unreal.Float32) : Void;
  
  /**
    Returns the World to Meters scale, which corresponds to the scale of the world as perceived by the player
    
    @return       How many Unreal units correspond to one meter in the real world
  **/
  static public function GetWorldToMetersScale(WorldContext : unreal.UObject) : unreal.Float32;
  
  /**
    Sets current tracking origin type (eye level or floor level).
  **/
  static public function SetTrackingOrigin(Origin : unreal.EHMDTrackingOrigin) : Void;
  
  /**
    Returns current tracking origin type (eye level or floor level).
  **/
  static public function GetTrackingOrigin() : unreal.EHMDTrackingOrigin;
  
  /**
    Returns current state of VR focus.
    
    @param bUseFocus             (out) if set to true, then this App does use VR focus.
    @param bHasFocus             (out) if set to true, then this App currently has VR focus.
  **/
  static public function GetVRFocusState(bUseFocus : Bool, bHasFocus : Bool) : Void;
  
}
