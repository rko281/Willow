﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #FrontendComponentSupplier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FrontendComponentSupplier guid: (GUID fromString: '{8a97bf52-e227-4a1a-82f7-06a6318a0ac3}')!
FrontendComponentSupplier comment: 'Abstract class for the front-end component suppliers, like Bootstrap, JqueryUI, etc.'!
!FrontendComponentSupplier categoriesForClass!Willow-Frontend! !
!FrontendComponentSupplier methodsFor!

addStatementsTo: aJSScript toCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas

asynchronicButtonLabeled: aRenderable applying: aComponentCommand

asynchronicLinkLabeled: aRenderable applying: aComponentCommand

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

dateFieldApplying: aComponentCommand

decimalNumberFieldApplying: aComponentCommand

delayedViewShowing: aThrobber whileEvaluating: aBlock thenRendering: aRenderable

dropdownListApplying: aComponentCommand

fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand

multiLineTextFieldApplying: aComponentCommand

multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

naturalNumberFieldApplying: aComponentCommand

radioRenderingWith: aRenderingBlock applyingToLabel: aCommandToComponent applyingToInput: anObject

singleLineTextFieldApplying: aComponentCommand

singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand

synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock

tableBuilder

unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem

updateRoot: aRoot
!FrontendComponentSupplier categoriesFor: #addStatementsTo:toCloseDialogsIn:matching:on:!Interaction!public! !
!FrontendComponentSupplier categoriesFor: #asynchronicButtonLabeled:applying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #asynchronicLinkLabeled:applying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #checkboxLabeled:onModel:offModel:applying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #checkboxUnlabeledOnModel:offModel:applying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #dateFieldApplying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #decimalNumberFieldApplying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #delayedViewShowing:whileEvaluating:thenRendering:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #dropdownListApplying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #fieldSetContaining:applying:withLegend:applying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #multiLineTextFieldApplying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #multipleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #naturalNumberFieldApplying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #radioRenderingWith:applyingToLabel:applyingToInput:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #singleLineTextFieldApplying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #singleSelectionListBoxDisplayingAtOnce:applying:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #synchronicButtonLabeled:applying:evaluating:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #tableBuilder!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #unorderedListApplying:listing:applyingToEach:!public!Supplying! !
!FrontendComponentSupplier categoriesFor: #updateRoot:!Processing!public! !
