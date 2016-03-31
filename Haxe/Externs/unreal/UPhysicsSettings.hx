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
  Default physics settings.
**/
@:glueCppIncludes("PhysicsEngine/PhysicsSettings.h")
@:uextern extern class UPhysicsSettings extends unreal.UDeveloperSettings {
  
  /**
    PhysicalMaterial Surface Types
  **/
  public var PhysicalSurfaces : unreal.TArray<unreal.FPhysicalSurfaceName>;
  
  /**
    Physics delta time initial average.
  **/
  public var InitialAverageFrameRate : unreal.Float32;
  
  /**
    Physics delta time smoothing factor for async scene.
  **/
  public var AsyncSceneSmoothingFactor : unreal.Float32;
  
  /**
    Physics delta time smoothing factor for sync scene.
  **/
  public var SyncSceneSmoothingFactor : unreal.Float32;
  
  /**
    Max number of substeps for physics simulation.
  **/
  public var MaxSubsteps : unreal.Int32;
  
  /**
    Max delta time (in seconds) for an individual simulation substep.
  **/
  public var MaxSubstepDeltaTime : unreal.Float32;
  
  /**
    Whether to substep the async physics simulation. This feature is still experimental. Certain functionality might not work correctly
  **/
  public var bSubsteppingAsync : Bool;
  
  /**
    Whether to substep the physics simulation. This feature is still experimental. Certain functionality might not work correctly
  **/
  public var bSubstepping : Bool;
  
  /**
    Max Physics Delta Time to be clamped.
  **/
  public var MaxPhysicsDeltaTime : unreal.Float32;
  
  /**
    If true CCD will be ignored. This is an optimization when CCD is never used which removes the need for physx to check it internally.
  **/
  public var bDisableCCD : Bool;
  
  /**
    If true, static meshes will use per poly collision as complex collision by default. If false the default behavior is the same as UseSimpleAsComplex.
  **/
  public var bDefaultHasComplexCollision : Bool;
  
  /**
    If true, simulate physics for this component on a dedicated server.
    This should be set if simulating physics and replicating with a dedicated server.
  **/
  public var bSimulateSkeletalMeshOnDedicatedServer : Bool;
  
  /**
    Max velocity which may be used to depenetrate simulated physics objects. 0 means no maximum.
  **/
  public var MaxDepenetrationVelocity : unreal.Float32;
  
  /**
    Max angular velocity that a simulated object can achieve.
  **/
  public var MaxAngularVelocity : unreal.Float32;
  
  /**
    Restitution combine mode, controls how restitution is computed for multiple materials.
  **/
  public var RestitutionCombineMode : unreal.EFrictionCombineMode;
  
  /**
    Friction combine mode, controls how friction is computed for multiple materials.
  **/
  public var FrictionCombineMode : unreal.EFrictionCombineMode;
  
  /**
    Minimum relative velocity required for an object to bounce. A typical value for simulation stability is about 0.2 * gravity
  **/
  public var BounceThresholdVelocity : unreal.Float32;
  
  /**
    Useful for constraining all objects in the world, for example if you are making a 2D game using 3D environments.
  **/
  public var DefaultDegreesOfFreedom : unreal.ESettingsDOF;
  @:deprecated public var LockedAxis_DEPRECATED : unreal.ESettingsLockedAxis;
  
  /**
    Can 2D physics be used (Box2D)?
  **/
  public var bEnable2DPhysics : Bool;
  
  /**
    Whether to warn when physics locks are used incorrectly. Turning this off is not recommended and should only be used by very advanced users.
  **/
  public var bWarnMissingLocks : Bool;
  
  /**
    Enables persistent contact manifolds. This will generate fewer contact points, but with more accuracy. Reduces stability of stacking, but can help energy conservation.
  **/
  public var bEnablePCM : Bool;
  
  /**
    Enables shape sharing between sync and async scene for static rigid actors
  **/
  public var bEnableShapeSharing : Bool;
  
  /**
    Enables the use of an async scene
  **/
  public var bEnableAsyncScene : Bool;
  
  /**
    Triangles from triangle meshes (BSP) with an area less than or equal to this value will be removed from physics collision data. Set to less than 0 to disable.
  **/
  public var TriangleMeshTriangleMinAreaThreshold : unreal.Float32;
  
  /**
    Threshold for ragdoll bodies above which they will be added to an aggregate before being added to the scene
  **/
  public var RagdollAggregateThreshold : unreal.Int32;
  
  /**
    Default fluid friction for Physics Volumes.
  **/
  public var DefaultFluidFriction : unreal.Float32;
  
  /**
    Default terminal velocity for Physics Volumes.
  **/
  public var DefaultTerminalVelocity : unreal.Float32;
  
  /**
    Default gravity.
  **/
  public var DefaultGravityZ : unreal.Float32;
  
}
