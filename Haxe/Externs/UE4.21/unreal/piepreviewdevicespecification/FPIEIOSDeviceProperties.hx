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
package unreal.piepreviewdevicespecification;

@:umodule("PIEPreviewDeviceSpecification")
@:glueCppIncludes("Public/PIEPreviewDeviceSpecification.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPIEIOSDeviceProperties {
  @:uproperty public var MetalRHIState : unreal.piepreviewdevicespecification.FPIERHIOverrideState;
  @:uproperty public var GLES2RHIState : unreal.piepreviewdevicespecification.FPIERHIOverrideState;
  @:uproperty public var NativeScaleFactor : unreal.Float32;
  @:uproperty public var DeviceModel : unreal.FString;
  
}