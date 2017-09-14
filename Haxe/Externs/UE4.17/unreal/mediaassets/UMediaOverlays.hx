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
package unreal.mediaassets;

/**
  Implements an asset that collects overlay texts from UMediaPlayer assets.
**/
@:umodule("MediaAssets")
@:glueCppIncludes("MediaOverlays.h")
@:uextern @:uclass extern class UMediaOverlays extends unreal.UObject {
  
  /**
    Get the current caption text overlays for the specified time, if any.
    
    @param OutCaptions Will contain the caption text overlays.
    @param Time The for which to get the overlays.
    @see GetSubtitles, GetTexts
  **/
  @:ufunction @:thisConst @:final public function GetCaptions(OutCaptions : unreal.PRef<unreal.TArray<unreal.mediaassets.FMediaPlayerOverlay>>, Time : unreal.FTimespan) : Void;
  
  /**
    Get the current subtitle text overlays for the specified time, if any.
    
    @param OutSubtitles Will contain the caption text overlays.
    @param Time The for which to get the overlays.
    @see GetCaptions, GetTexts
  **/
  @:ufunction @:thisConst @:final public function GetSubtitles(OutSubtitles : unreal.PRef<unreal.TArray<unreal.mediaassets.FMediaPlayerOverlay>>, Time : unreal.FTimespan) : Void;
  
  /**
    Get the current generic text overlays for the specified time, if any.
    
    @param OutTexts Will contain the text overlays.
    @param Time The for which to get the overlays.
    @see GetCaptions, GetSubtitles
  **/
  @:ufunction @:thisConst @:final public function GetTexts(OutTexts : unreal.PRef<unreal.TArray<unreal.mediaassets.FMediaPlayerOverlay>>, Time : unreal.FTimespan) : Void;
  
}