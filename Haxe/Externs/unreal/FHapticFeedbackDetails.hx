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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:glueCppIncludes("GameFramework/HapticFeedbackEffect.h")
@:noCopy @:noEquals @:uextern extern class FHapticFeedbackDetails {
  
  /**
    The amplitude to vibrate the haptic device at.  Amplitudes are normalized over the range [0.0, 1.0], with 1.0 being the max setting of the device
  **/
  public var Amplitude : unreal.FRuntimeFloatCurve;
  
  /**
    The frequency to vibrate the haptic device at.  Frequency ranges vary by device!
  **/
  public var Frequency : unreal.FRuntimeFloatCurve;
  
}
