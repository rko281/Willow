"Filed out from Dolphin Smalltalk 7"!

FrontendComponentSupplier subclass: #Html5ComponentSupplier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Html5ComponentSupplier guid: (GUID fromString: '{013bb865-cf36-429f-94c0-b22e0ec35687}')!
Html5ComponentSupplier comment: 'I provide plain HTML 5 components.'!
!Html5ComponentSupplier categoriesForClass!Willow-Frontend! !
!Html5ComponentSupplier methodsFor!

addStatementsTo: aJSScript toCloseDialogsIn: jQueryMatchingDialogContainer matching: dialogSupplier on: aCanvas	aJSScript << (dialogSupplier value: (jQueryMatchingDialogContainer children: 'dialog')) removeAttribute: 'open'!

asynchronicButtonLabeled: aRenderable applying: aComponentCommand	^ AsynchronicButtonWebView labeled: aRenderable applying: aComponentCommand!

asynchronicLinkLabeled: aRenderable applying: aComponentCommand	^ LinkWebView asynchronicLabeled: aRenderable applying: aComponentCommand!

checkboxLabeled: aRenderable onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ CheckboxWebView		labeled: aRenderable		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

checkboxUnlabeledOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff applying: aCommandToComponent	^ CheckboxWebView		onModel: anObjectToUseWhenOn		offModel: anObjectToUseWhenOff		applying: aCommandToComponent!

dateFieldApplying: aComponentCommand	^ DateFieldWebView applying: aComponentCommand!

decimalNumberFieldApplying: aComponentCommand	^ NumberFieldWebView applying: aComponentCommand transformingWith: FloatCodec new!

dropdownListApplying: aComponentCommand	^ DropDownListWebView applying: aComponentCommand!

fieldSetContaining: aWebView applying: fieldSetCommand withLegend: aTitle applying: legendCommand	^ FieldSetWebView		containing: aWebView		applying: fieldSetCommand		withLegend: aTitle		applying: legendCommand!

multiLineTextFieldApplying: aComponentCommand	^ TextFieldWebView multiLineTriggeringOnChangeApplying: aComponentCommand!

multipleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand	^ MultipleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: aComponentCommand!

naturalNumberFieldApplying: aComponentCommand	^ NumberFieldWebView applying: [ :field | field boundNotNegative + aComponentCommand ] transformingWith: NaturalNumberCodec new!

radioRenderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand	^ RadioGroupWebView 		renderingWith: aRenderingBlock 		applyingToLabel: aLabelCommand 		applyingToInput: anInputCommand!

singleLineTextFieldApplying: aComponentCommand	^ TextFieldWebView singleLineTriggeringOnChangeApplying: aComponentCommand!

singleSelectionListBoxDisplayingAtOnce: aNumberOfElements applying: aComponentCommand	^ SingleSelectionListBoxWebView displayingAtOnce: aNumberOfElements applying: aComponentCommand!

synchronicButtonLabeled: aRenderable applying: aComponentCommand evaluating: anActionBlock	^ SynchronicSubmitButtonWebView		labeled: aRenderable		applying: aComponentCommand		evaluating: anActionBlock!

tableBuilder	^ TableWebViewBuilder new!

unorderedListApplying: aCommandToList listing: aCollection applyingToEach: aCommandToItem	^ UnorderedListWebView applying: aCommandToList listing: aCollection applyingToEach: aCommandToItem!

updateRoot: aRoot	aRoot beHtml5! !
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

