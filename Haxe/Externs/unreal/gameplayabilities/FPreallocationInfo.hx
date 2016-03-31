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
package unreal.gameplayabilities;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Struct for pooling and preallocating gameplaycuenotify_actor classes. This data is per world and used to track what actors are available to recycle and which classes need to preallocate instances of those actors
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("GameplayCueManager.h")
@:noCopy @:noEquals @:uextern extern class FPreallocationInfo {
  public var OwningWorld : unreal.UWorld;
  public var ClassesNeedingPreallocation : unreal.TArray<unreal.gameplayabilities.AGameplayCueNotify_Actor>;
  
}
