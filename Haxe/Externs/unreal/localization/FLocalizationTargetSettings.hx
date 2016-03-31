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
package unreal.localization;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("Localization")
@:glueCppIncludes("LocalizationSettings.h")
@:noCopy @:noEquals @:uextern extern class FLocalizationTargetSettings {
  
  /**
    Cultures for which the source text is being localized for.
  **/
  public var SupportedCulturesStatistics : unreal.TArray<unreal.localization.FCultureStatistics>;
  
  /**
    The index of the native culture among the supported cultures.
  **/
  public var NativeCultureIndex : unreal.Int32;
  
  /**
    Settings for import/export of translations.
  **/
  public var ExportSettings : unreal.localization.FLocalizationExportingSettings;
  
  /**
    Parameters for defining what text is gathered from metadata and how.
  **/
  public var GatherFromMetaData : unreal.localization.FGatherTextFromMetaDataConfiguration;
  
  /**
    Parameters for defining what text is gathered from packages and how.
  **/
  public var GatherFromPackages : unreal.localization.FGatherTextFromPackagesConfiguration;
  
  /**
    Parameters for defining what text is gathered from text files and how.
  **/
  public var GatherFromTextFiles : unreal.localization.FGatherTextFromTextFilesConfiguration;
  
  /**
    The names of modules which must be loaded when gathering text. Use to gather from packages or metadata sourced from a module that isn't the primary game module.
  **/
  public var RequiredModuleNames : unreal.TArray<unreal.FString>;
  
  /**
    Text present in these manifests will not be duplicated in this target.
  **/
  public var AdditionalManifestDependencies : unreal.TArray<unreal.FFilePath>;
  
  /**
    Text present in these targets will not be duplicated in this target.
  **/
  public var TargetDependencies : unreal.TArray<unreal.FGuid>;
  
  /**
    Whether the target has outstanding conflicts that require resolution.
  **/
  public var ConflictStatus : unreal.localization.ELocalizationTargetConflictStatus;
  public var Guid : unreal.FGuid;
  
  /**
    Unique name for the target.
  **/
  public var Name : unreal.FString;
  
}
