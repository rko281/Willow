﻿"Filed out from Dolphin Smalltalk 7"!

FrontendComponentSupplier subclass: #BootstrapComponentSupplier
	instanceVariableNames: 'bootstrapLibraries'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapComponentSupplier guid: (GUID fromString: '{11c5f93b-73d3-4162-ab48-1423a3564c8b}')!
BootstrapComponentSupplier comment: 'I have the responsibility to provide Bootstrap components. '!
!BootstrapComponentSupplier categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapComponentSupplier methodsFor!

addStatementsTo: aJSScript toCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas

asynchronicButtonLabeled: aRenderable applying: aComponentCommand

asynchronicLinkActingAsButtonLabeled: aRenderable applying: aComponentCommand

asynchronicLinkLabeled: aRenderable applying: aComponentCommand

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

dateFieldApplying: aComponentCommand

decimalNumberFieldApplying: aComponentCommand

dialogBuilder

dropdownListApplying: aComponentCommand

dropdownMenuBuilder

fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand

gridBuilder

initializeUsing: aLibraryCollection

inputGroupAddOnWrapping: aRenderable

inputGroupButtonWrapping: aRenderable

multiLineTextFieldApplying: aComponentCommand

multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

naturalNumberFieldApplying: aComponentCommand

notificationBuilder 

panelBuilder

pillsBuilder

radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand

singleButtonDropdownBuilder

singleLineTextFieldApplying: aComponentCommand

singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

splitButtonDropdownBuilder

synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock

tableBuilder

tabsBuilder

unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem

updateRoot: aRoot
!BootstrapComponentSupplier categoriesFor: #addStatementsTo:toCloseDialogsIn:matching:on:!Interaction!public! !
!BootstrapComponentSupplier categoriesFor: #asynchronicButtonLabeled:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #asynchronicLinkActingAsButtonLabeled:applying:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #asynchronicLinkLabeled:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #checkboxLabeled:onModel:offModel:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #checkboxUnlabeledOnModel:offModel:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dateFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #decimalNumberFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dialogBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #dropdownListApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #dropdownMenuBuilder!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #fieldSetContaining:applying:withLegend:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #gridBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapComponentSupplier categoriesFor: #inputGroupAddOnWrapping:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #inputGroupButtonWrapping:!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #multiLineTextFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #multipleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #naturalNumberFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #notificationBuilder!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #panelBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #pillsBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #radioRenderingWith:applyingToLabel:applyingToInput:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #singleButtonDropdownBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #singleLineTextFieldApplying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #singleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #splitButtonDropdownBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #synchronicButtonLabeled:applying:evaluating:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #tableBuilder!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #tabsBuilder!public!Supplying / Non Portable! !
!BootstrapComponentSupplier categoriesFor: #unorderedListApplying:listing:applyingToEach:!public!Supplying! !
!BootstrapComponentSupplier categoriesFor: #updateRoot:!Processing!public! !

!BootstrapComponentSupplier class methodsFor!

online

usingLibraries: aLibraryCollection

withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary typeaheadLibrary: aTypeaheadLibrary
!BootstrapComponentSupplier class categoriesFor: #online!Instance Creation!public! !
!BootstrapComponentSupplier class categoriesFor: #usingLibraries:!private / Instance Creation!public! !
!BootstrapComponentSupplier class categoriesFor: #withBootstrapLibrary:selectLibrary:datepickerLibrary:typeaheadLibrary:!Instance Creation!public! !
