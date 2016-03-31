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
  Determines which ticking group a tick function belongs to.
**/
@:glueCppIncludes("GameFramework/Actor.h")
@:uname("ETickingGroup")
@:uextern extern enum ETickingGroup {
  
  /**
    Any item that needs to be executed before physics simulation starts.
    @DisplayName Pre Physics
  **/
  @DisplayName("Pre Physics")
  TG_PrePhysics;
  
  /**
    Special tick group that starts physics simulation.
    @DisplayName Start Physics
  **/
  @DisplayName("Start Physics")
  TG_StartPhysics;
  
  /**
    Any item that can be run in parallel with our physics simulation work.
    @DisplayName During Physics
  **/
  @DisplayName("During Physics")
  TG_DuringPhysics;
  
  /**
    Special tick group that ends physics simulation.
    @DisplayName End Physics
  **/
  @DisplayName("End Physics")
  TG_EndPhysics;
  
  /**
    Any item that needs rigid body and cloth simulation to be complete before being executed.
    @DisplayName Post Physics
  **/
  @DisplayName("Post Physics")
  TG_PostPhysics;
  
  /**
    Any item that needs the update work to be done before being ticked.
    @DisplayName Post Update Work
  **/
  @DisplayName("Post Update Work")
  TG_PostUpdateWork;
  
  /**
    Catchall for anything demoted to the end.
    @DisplayName Last Demotable
  **/
  @DisplayName("Last Demotable")
  TG_LastDemotable;
  
  /**
    Special tick group that is not actually a tick group. After every tick group this is repeatedly re-run until there are no more newly spawned items to run.
    @DisplayName Newly Spawned
  **/
  @DisplayName("Newly Spawned")
  TG_NewlySpawned;
  
}
