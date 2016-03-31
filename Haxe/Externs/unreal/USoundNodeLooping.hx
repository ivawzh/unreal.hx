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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Defines how a sound loops; either indefinitely, or for a set number of times.
  Note: The Looping node should only be used for logical or procedural looping such as introducing a delay.
  These sounds will not be played seamlessly. If you want a sound to loop seamlessly and indefinitely,
  use the Looping flag on the Wave Player node for that sound.
**/
@:glueCppIncludes("Sound/SoundNodeLooping.h")
@:uextern extern class USoundNodeLooping extends unreal.USoundNode {
  
  /**
    If enabled, the node will continue to loop indefinitely regardless of the Loop Count value.
  **/
  public var bLoopIndefinitely : Bool;
  
  /**
    The amount of times to loop
  **/
  public var LoopCount : unreal.Int32;
  
}
