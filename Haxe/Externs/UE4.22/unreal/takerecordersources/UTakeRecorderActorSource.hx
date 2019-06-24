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
package unreal.takerecordersources;

/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, some of its methods are inaccessible
  
  This Take Recorder Source can record an actor from the World's properties.
  Records the properties of the actor and the components on the actor and safely
  handles new components being spawned at runtime and the actor being destroyed.
**/
@:umodule("TakeRecorderSources")
@:glueCppIncludes("Private/TakeRecorderActorSource.h")
@:noClass @:uextern @:uclass extern class UTakeRecorderActorSource extends unreal.takescore.UTakeRecorderSource {
  
  /**
    An array of section recorders created during the recording process that are capturing data about the actor/components.
    Will be an empty list when a recording is not in progress.
  **/
  @:uproperty public var TrackRecorders : unreal.TArray<unreal.taketrackrecorders.UMovieSceneTrackRecorder>;
  
  /**
    Dynamically created list of settings objects for the different factories that are recording something
    on this actor. If a Factory has no properties it can record the settings objects will not get created.
    Only one instance of this object exists for a factory and the factory recorder will be passed the shared
    instance.
  **/
  @:uproperty public var FactorySettings : unreal.TArray<unreal.UObject>;
  
  /**
    The master or uppermost level sequence that this source is being recorded into. Set during PreRecording, null after PostRecording.
  **/
  @:uproperty public var MasterLevelSequence : unreal.levelsequence.ULevelSequence;
  
  /**
    The level sequence that this source is being recorded into. Set during PreRecording, null after PostRecording.
  **/
  @:uproperty public var TargetLevelSequence : unreal.levelsequence.ULevelSequence;
  
  /**
    Lists the properties and components on the current actor and whether or not each property will be
    recorded into a track in the resulting Level Sequence.
  **/
  @:uproperty public var RecordedProperties : unreal.takescore.UActorRecorderPropertyMap;
  
  /**
    Whether to perform key-reduction algorithms as part of the recording
  **/
  @:uproperty public var bReduceKeys : Bool;
  
  /**
    Should this actor be recorded as a Possessable in Sequencer? If so the resulting Object Binding
    will not create a Spawnable copy of this object and instead will possess this object in the level.
    This
  **/
  @:uproperty public var RecordType : unreal.takerecordersources.ETakeRecorderActorRecordType;
  
}