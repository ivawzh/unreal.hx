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

@:glueCppIncludes("AI/Navigation/AvoidanceManager.h")
@:uextern extern class UAvoidanceManager extends unreal.UObject {
  
  /**
    Allowable height margin between obstacles and agents. This is over and above the difference in agent heights.
  **/
  public var HeightCheckMargin : unreal.Float32;
  
  /**
    Deprecated - use HeightCheckMargin, generally a much smaller value.
  **/
  @:deprecated public var TestHeightDifference_DEPRECATED : unreal.Float32;
  
  /**
    Multiply the radius of all STORED avoidance objects by this value to allow a little extra room for avoidance maneuvers.
  **/
  public var ArtificialRadiusExpansion : unreal.Float32;
  
  /**
    This is how far forward in time (seconds) we extend our velocity cones and thus our prediction
  **/
  public var DeltaTimeToPredict : unreal.Float32;
  
  /**
    How long to stay on course (barring collision) after making an unobstructed move (should be > 0.0, but can be less than a full frame)
  **/
  public var LockTimeAfterClean : unreal.Float32;
  
  /**
    How long to stay on course (barring collision) after making an avoidance move
  **/
  public var LockTimeAfterAvoid : unreal.Float32;
  
  /**
    How long an avoidance UID must not be updated before the system will put it back in the pool. Actual delay is up to 150% of this value.
  **/
  public var DefaultTimeToLive : unreal.Float32;
  
  /**
    Get the number of avoidance objects currently in the manager.
  **/
  @:final public function GetObjectCount() : unreal.Int32;
  
  /**
    Get appropriate UID for use when reporting to this function or requesting RVO assistance.
  **/
  @:final public function GetNewAvoidanceUID() : unreal.Int32;
  
  /**
    Register with the given avoidance manager.
    @param AvoidanceWeight      When avoiding each other, actors divert course in proportion to their relative weights. Range is 0.0 to 1.0. Special: at 1.0, actor will not divert course at all.
  **/
  @:final public function RegisterMovementComponent(MovementComp : unreal.UMovementComponent, AvoidanceWeight : unreal.Float32) : Bool;
  
  /**
    Calculate avoidance velocity for component (avoids collisions with the supplied component)
  **/
  @:final public function GetAvoidanceVelocityForComponent(MovementComp : unreal.UMovementComponent) : unreal.FVector;
  
  /**
    Only use if you want manual velocity planning. Provide your AvoidanceUID in order to avoid colliding with yourself.
  **/
  @:final public function GetAvoidanceVelocityIgnoringUID(AvoidanceData : unreal.Const<unreal.PRef<unreal.FNavAvoidanceData>>, DeltaTime : unreal.Float32, IgnoreThisUID : unreal.Int32) : unreal.FVector;
  
  /**
    Only use if you want manual velocity planning. Will not ignore your own volume if you are registered.
  **/
  @:final public function GetAvoidanceVelocity(AvoidanceData : unreal.Const<unreal.PRef<unreal.FNavAvoidanceData>>, DeltaTime : unreal.Float32) : unreal.FVector;
  
}
