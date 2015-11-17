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
package unreal.animgraphruntime;


/**
  The type of modification to make to the destination component(s)
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("AnimGraphNode_BoneDrivenController.h")
@:uname("EDrivenBoneModificationMode")
@:class @:uextern extern enum EDrivenBoneModificationMode {
  
  /**
    Add the driven value to the input component value(s)
  **/
  AddToInput;
  
  /**
    Replace the input component value(s) with the driven value
  **/
  ReplaceComponent;
  
  /**
    Add the driven value to the reference pose value
  **/
  AddToRefPose;
  
}