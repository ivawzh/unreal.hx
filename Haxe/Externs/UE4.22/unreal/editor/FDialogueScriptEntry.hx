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
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Classes/Commandlets/ExportDialogueScriptCommandlet.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FDialogueScriptEntry {
  @:uproperty public var DialogueAssetGUID : unreal.FString;
  @:uproperty public var TargetVoiceGUIDs : unreal.TArray<unreal.FString>;
  @:uproperty public var SpeakingVoiceGUID : unreal.FString;
  @:uproperty public var LocalizationKeys : unreal.TArray<unreal.FString>;
  @:uproperty public var IsRecorded : Bool;
  @:uproperty public var DialogueAsset : unreal.FString;
  @:uproperty public var AudioFileName : unreal.FString;
  @:uproperty public var VoiceActorDirection : unreal.FString;
  @:uproperty public var SpokenDialogue : unreal.FString;
  @:uproperty public var TargetVoices : unreal.TArray<unreal.FString>;
  @:uproperty public var SpeakingVoice : unreal.FString;
  
}