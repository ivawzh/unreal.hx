/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("DeviceProfiles/DeviceProfile.h")
@:uextern @:uclass extern class UDeviceProfile extends unreal.UTextureLODSettings {
  
  /**
    The collection of CVars which is set from this profile
  **/
  @:uproperty public var CVars : unreal.TArray<unreal.FString>;
  
  /**
    The parent object of this profile, it is the object matching this DeviceType with the BaseProfileName
  **/
  @:uproperty public var Parent : unreal.UObject;
  
  /**
    The name of the parent profile of this object
  **/
  @:uproperty public var BaseProfileName : unreal.FString;
  
  /**
    The type of this profile, I.e. IOS, Windows, PS4 etc
  **/
  @:uproperty public var DeviceType : unreal.FString;
  
}