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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("EnvironmentQuery/EnvQueryGenerator.h")
@:uextern extern class UEnvQueryGenerator extends unreal.aimodule.UEnvQueryNode {
  
  /**
    if set, tests will be automatically sorted for best performance before running query
  **/
  public var bAutoSortTests : Bool;
  
  /**
    type of generated items
  **/
  public var ItemType : unreal.TSubclassOf<unreal.aimodule.UEnvQueryItemType>;
  public var OptionName : unreal.FString;
  
}
