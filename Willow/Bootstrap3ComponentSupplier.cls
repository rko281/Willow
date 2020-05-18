﻿"Filed out from Dolphin Smalltalk 7"!

BootstrapComponentSupplier subclass: #Bootstrap3ComponentSupplier
	instanceVariableNames: 'bootstrapLibraries'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3ComponentSupplier guid: (GUID fromString: '{b64e7661-20fd-4d21-a410-78ab591804b6}')!
Bootstrap3ComponentSupplier comment: 'I have the responsibility to provide Bootstrap components. '!
!Bootstrap3ComponentSupplier categoriesForClass!Willow-Bootstrap-3-Frontend! !
!Bootstrap3ComponentSupplier methodsFor!

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent

fieldAddonBuilder

gridBuilder

helpTextBoundTo: aFieldWebView describedBy: aHelpText

initializeUsing: aLibraryCollection

labeledFieldApplying: aCommandToContainer displaying: thePhrasingContent applying: aCommandToLabel boundTo: aFieldWebView applying: aCommandToField

navigationDropdownMenuBuilder

panelBuilder

pillsBuilder

radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand

singleButtonDropdownBuilder

splitButtonDropdownBuilder

tabsBuilder

updateRoot: aRoot
!Bootstrap3ComponentSupplier categoriesFor: #checkboxLabeled:onModel:offModel:applying:!public!Supplying! !
!Bootstrap3ComponentSupplier categoriesFor: #checkboxUnlabeledOnModel:offModel:applying:!public!Supplying! !
!Bootstrap3ComponentSupplier categoriesFor: #fieldAddonBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #gridBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #helpTextBoundTo:describedBy:!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap3ComponentSupplier categoriesFor: #labeledFieldApplying:displaying:applying:boundTo:applying:!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #navigationDropdownMenuBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #panelBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #pillsBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #radioRenderingWith:applyingToLabel:applyingToInput:!public!Supplying! !
!Bootstrap3ComponentSupplier categoriesFor: #singleButtonDropdownBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #splitButtonDropdownBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #tabsBuilder!public!Supplying / Non Portable! !
!Bootstrap3ComponentSupplier categoriesFor: #updateRoot:!Processing!public! !

!Bootstrap3ComponentSupplier class methodsFor!

online

usingLibraries: aLibraryCollection

withBootstrapLibrary: aBootstrapLibrary selectLibrary: aBootstrapSelectLibrary datepickerLibrary: aDatePickerLibrary typeaheadLibrary: aTypeaheadLibrary
!Bootstrap3ComponentSupplier class categoriesFor: #online!Instance Creation!public! !
!Bootstrap3ComponentSupplier class categoriesFor: #usingLibraries:!private / Instance Creation!public! !
!Bootstrap3ComponentSupplier class categoriesFor: #withBootstrapLibrary:selectLibrary:datepickerLibrary:typeaheadLibrary:!Instance Creation!public! !
