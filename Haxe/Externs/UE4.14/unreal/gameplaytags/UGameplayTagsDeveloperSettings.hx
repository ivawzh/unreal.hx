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
package unreal.gameplaytags;

@:umodule("GameplayTags")
@:glueCppIncludes("GameplayTagsSettings.h")
@:uextern @:uclass extern class UGameplayTagsDeveloperSettings extends unreal.UObject {
  
  /**
    Allows new tags to be saved into their own INI file. This is make merging easier for non technical developers by setting up their own ini file.
  **/
  @:uproperty public var DeveloperConfigName : unreal.FString;
  
}