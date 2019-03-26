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
package unreal.umg;

/**
  Bare-bones base class to make creating custom UListView widgets easier.
  Child classes should also inherit from ITypedUMGListView<T> to get a basic public ListView API for free.
  
  Child classes will own the actual SListView<T> widgets, but this provides some boilerplate functionality for generating entries.
  To generate a row for the child list, use GenerateTypedRow with the appropriate SObjectTableRow<T> type for your list
  
  Additionally, the entry widget class can be filtered for a particular class and interface with the EntryClass and EntryInterface metadata arguments
  This can be specified either on the class directly (see below) or on any BindWidget UProperty
  
  Example:
  class UMyUserWidget : public UUserWidget
  {
              UPROPERTY(BindWidget, meta = (EntryClass = MyListEntryWidget))
              UListView* ListView_InventoryItems;
  }
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UListViewBase extends unreal.umg.UWidget {
  
  /**
    Gets all of the list entry widgets currently being displayed by the list
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetDisplayedEntryWidgets() : unreal.Const<unreal.PRef<unreal.TArray<unreal.umg.UUserWidget>>>;
  
  /**
    Full regeneration of all entries in the list. Note that the entry UWidget instances will not be destroyed, but they will be released and re-generated.
    In other words, entry widgets will not receive Destruct/Construct events. They will receive OnEntryReleased and IUserObjectListEntry implementations will receive OnListItemObjectSet.
  **/
  @:ufunction(BlueprintCallable) @:final public function RegenerateAllEntries() : Void;
  
  /**
    Scroll the entire list up to the first item
  **/
  @:ufunction(BlueprintCallable) @:final public function ScrollToTop() : Void;
  
  /**
    Scroll the entire list down to the bottom-most item
  **/
  @:ufunction(BlueprintCallable) @:final public function ScrollToBottom() : Void;
  
  /**
    The type of widget to create for each entry displayed in the list.
  **/
  @:uproperty private var EntryWidgetClass : unreal.TSubclassOf<unreal.umg.UUserWidget>;
  
}