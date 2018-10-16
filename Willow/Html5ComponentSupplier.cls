﻿"Filed out from Dolphin Smalltalk 7"!

FrontendComponentSupplier subclass: #Html5ComponentSupplier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Html5ComponentSupplier guid: (GUID fromString: '{013bb865-cf36-429f-94c0-b22e0ec35687}')!
Html5ComponentSupplier comment: 'I provide plain HTML 5 components.'!
!Html5ComponentSupplier categoriesForClass!Willow-Frontend! !
!Html5ComponentSupplier methodsFor!

addStatementsTo: aJSScript toCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas

asynchronicButtonLabeled: aRenderable applying: aComponentCommand

asynchronicLinkLabeled: aRenderable applying: aComponentCommand

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

dateFieldApplying: aComponentCommand

decimalNumberFieldApplying: aComponentCommand

dropdownListApplying: aComponentCommand

fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand

multiLineTextFieldApplying: aComponentCommand

multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

naturalNumberFieldApplying: aComponentCommand

radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand

singleLineTextFieldApplying: aComponentCommand

singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock

tableBuilder

unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem

updateRoot: aRoot
!Html5ComponentSupplier categoriesFor: #addStatementsTo:toCloseDialogsIn:matching:on:!Interaction!public! !
!Html5ComponentSupplier categoriesFor: #asynchronicButtonLabeled:applying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #asynchronicLinkLabeled:applying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #checkboxLabeled:onModel:offModel:applying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #checkboxUnlabeledOnModel:offModel:applying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #dateFieldApplying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #decimalNumberFieldApplying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #dropdownListApplying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #fieldSetContaining:applying:withLegend:applying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #multiLineTextFieldApplying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #multipleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #naturalNumberFieldApplying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #radioRenderingWith:applyingToLabel:applyingToInput:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #singleLineTextFieldApplying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #singleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #synchronicButtonLabeled:applying:evaluating:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #tableBuilder!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #unorderedListApplying:listing:applyingToEach:!public!Supplying! !
!Html5ComponentSupplier categoriesFor: #updateRoot:!Processing!public! !
