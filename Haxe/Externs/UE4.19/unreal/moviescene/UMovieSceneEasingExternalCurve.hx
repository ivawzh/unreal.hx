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
package unreal.moviescene;

@:umodule("MovieScene")
@:glueCppIncludes("Generators/MovieSceneEasingCurves.h")
@:uextern @:uclass extern class UMovieSceneEasingExternalCurve extends unreal.UObject implements unreal.moviescene.IMovieSceneEasingFunction {
  
  /**
    Curve data
  **/
  @:uproperty public var Curve : unreal.UCurveFloat;
  // MovieSceneEasingFunction interface implementation
  
  /**
    Evaluate the easing with an interpolation value between 0 and 1
  **/
  @:ufunction(BlueprintImplementableEvent, BlueprintCallable) @:thisConst private function OnEvaluate(Interp : unreal.Float32) : unreal.Float32;
  
}