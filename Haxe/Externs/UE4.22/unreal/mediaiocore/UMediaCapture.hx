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
package unreal.mediaiocore;

/**
  Abstract base class for media capture.
  
  MediaCapture capture the texture of the Render target or the SceneViewport and sends it to an external media device.
  MediaCapture should be created by a MediaOutput.
**/
@:umodule("MediaIOCore")
@:glueCppIncludes("MediaCapture.h")
@:uextern @:uclass extern class UMediaCapture extends unreal.UObject {
  
  /**
    Stop the current capture if there is one.
    Then find and capture every frame from active SceneViewport.
    It can only find a SceneViewport when you play in Standalone or in "New Editor Window PIE".
    If the active SceneViewport is destroyed, the capture will stop.
    The SceneViewport needs to be of the same size and have the same pixel format as requested by the media output.
    @return True if the capture was successfully started
  **/
  @:ufunction(BlueprintCallable) @:final public function CaptureActiveSceneViewport(CaptureOptions : unreal.mediaiocore.FMediaCaptureOptions) : Bool;
  
  /**
    Stop the actual capture if there is one.
    Then capture every frame for a TextureRenderTarget2D.
    The TextureRenderTarget2D needs to be of the same size and have the same pixel format as requested by the media output.
    @return True if the capture was successfully started
  **/
  @:ufunction(BlueprintCallable) @:final public function CaptureTextureRenderTarget2D(RenderTarget : unreal.UTextureRenderTarget2D, CaptureOptions : unreal.mediaiocore.FMediaCaptureOptions) : Bool;
  
  /**
    Update the current capture with every frame for a TextureRenderTarget2D.
    The TextureRenderTarget2D needs to be of the same size and have the same pixel format as requested by the media output.
    @return Return true if the capture was successfully updated. If false is returned, the capture was stopped.
  **/
  @:ufunction(BlueprintCallable) @:final public function UpdateTextureRenderTarget2D(RenderTarget : unreal.UTextureRenderTarget2D) : Bool;
  
  /**
    Stop the previous requested capture.
    @param bAllowPendingFrameToBeProcess Keep copying the pending frames asynchronously or stop immediately without copying the pending frames.
  **/
  @:ufunction(BlueprintCallable) @:final public function StopCapture(bAllowPendingFrameToBeProcess : Bool) : Void;
  
  /**
    Get the current state of the capture.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetState() : unreal.mediaiocore.EMediaCaptureState;
  
  /**
    Set the media output. Can only be set when the capture is stopped.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetMediaOutput(InMediaOutput : unreal.mediaiocore.UMediaOutput) : Void;
  
  /**
    Get the desired size of the current capture.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetDesiredSize() : unreal.FIntPoint;
  
  /**
    Get the desired pixel format of the current capture.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetDesiredPixelFormat() : unreal.EPixelFormat;
  @:uproperty private var MediaOutput : unreal.mediaiocore.UMediaOutput;
  
  /**
    Called when the state of the capture changed.
  **/
  @:uproperty public var OnStateChanged : unreal.mediaiocore.FMediaCaptureStateChangedSignature;
  
}