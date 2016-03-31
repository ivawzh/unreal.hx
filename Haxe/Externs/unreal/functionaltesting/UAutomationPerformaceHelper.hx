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
package unreal.functionaltesting;


/**
  Class for use with functional tests which provides various performance measuring features.
  Recording of basic, unintrusive performance stats.
  Automatic captures using external CPU and GPU profilers.
  Triggering and ending of writing full stats to a file.
**/
@:umodule("FunctionalTesting")
@:glueCppIncludes("FunctionalTest.h")
@:uextern extern class UAutomationPerformaceHelper extends unreal.UObject {
  
  /**
    Begin basic stat recording
  **/
  @:final public function Tick(DeltaSeconds : unreal.Float32) : Void;
  
  /**
    Adds a sample to the stats counters for the current performance stats record.
  **/
  @:final public function Sample(DeltaSeconds : unreal.Float32) : Void;
  
  /**
    Begins recording a new named performance stats record. We start by recording the baseline
  **/
  @:final public function BeginRecordingBaseline(RecordName : unreal.FString) : Void;
  
  /**
    Stops recording the baseline and moves to the main record.
  **/
  @:final public function EndRecordingBaseline() : Void;
  
  /**
    Begins recording a new named performance stats record. We start by recording the baseline.
  **/
  @:final public function BeginRecording(RecordName : unreal.FString, InGPUBudget : unreal.Float32, InRenderThreadBudget : unreal.Float32, InGameThreadBudget : unreal.Float32) : Void;
  
  /**
    Stops recording performance stats.
  **/
  @:final public function EndRecording() : Void;
  
  /**
    Writes the current set of performance stats records to a csv file in the profiling directory. An additional directory and an extension override can also be used.
  **/
  @:final public function WriteLogFile(CaptureDir : unreal.FString, CaptureExtension : unreal.FString) : Void;
  
  /**
    Returns true if this stats tracker is currently recording performance stats.
  **/
  @:thisConst @:final public function IsRecording() : Bool;
  
  /**
    Does any init work across all tests..
  **/
  @:final public function OnBeginTests() : Void;
  
  /**
    Does any final work needed as all tests are complete.
  **/
  @:final public function OnAllTestsComplete() : Void;
  @:thisConst @:final public function IsCurrentRecordWithinGPUBudget() : Bool;
  @:thisConst @:final public function IsCurrentRecordWithinGameThreadBudget() : Bool;
  @:thisConst @:final public function IsCurrentRecordWithinRenderThreadBudget() : Bool;
  
  /**
    Communicates with external profiler to being a CPU capture.
  **/
  @:final public function StartCPUProfiling() : Void;
  
  /**
    Communicates with external profiler to end a CPU capture.
  **/
  @:final public function StopCPUProfiling() : Void;
  
  /**
    Communicates with an external GPU profiler to trigger a GPU trace.
  **/
  @:final public function TriggerGPUTrace() : Void;
  
  /**
    Begins recording stats to a file.
  **/
  @:final public function BeginStatsFile(RecordName : unreal.FString) : Void;
  
  /**
    Ends recording stats to a file.
  **/
  @:final public function EndStatsFile() : Void;
  
}
