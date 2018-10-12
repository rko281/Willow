"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #BootstrapRadioWebView
	instanceVariableNames: 'interactionInterpreter renderingBlock identifierAssigner labelCommand inputCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapRadioWebView guid: (GUID fromString: '{89b805da-71f2-4867-a60d-b4c1307248d5}')!
BootstrapRadioWebView comment: 'I''m a radio button group specifically designed to use the html structure required by Bootstrap.'!
!BootstrapRadioWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapRadioWebView methodsFor!

identifyIn: aCanvas	^identifierAssigner identifyIn: aCanvas!

initializeRenderingWith: aRenderingBlock	applyingToLabel: aLabelCommand	applyingToInput: anInputCommand	renderingBlock := aRenderingBlock.	labelCommand := aLabelCommand.	inputCommand := anInputCommand.	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.	identifierAssigner := IdentifierAssigner prefixedBy: 'radio-button'!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	aCanvas radioGroup		callback: [ :element | self choose: element ];		with: [ :radioGroup | 			chosenElementOptional withContentDo: [ :chosenElement | radioGroup selected: chosenElement ].			availableElements do: [ :element | self renderRadioButtonFor: element asPartOf: radioGroup on: aCanvas ] ]!

renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas	| radioButton |	radioButton := aRadioGroup radioButton.	identifierAssigner withAssignedIdentifierDo: [ :id | radioButton id: id ].	radioButton		apply: inputCommand;		interactUsing: interactionInterpreter;		value: anElement.	self renderLabelContentFor: anElement on: aCanvas!

renderLabelContentFor: anElement on: aCanvas	aCanvas render: (renderingBlock value: anElement)!

renderLabelOn: aCanvas with: aRenderable	aCanvas label with: aRenderable applying: labelCommand!

renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas 			 self renderLabelOn: aCanvas			with: [ self renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas ] ! !
!BootstrapRadioWebView categoriesFor: #identifyIn:!configuring!public! !
!BootstrapRadioWebView categoriesFor: #initializeRenderingWith:applyingToLabel:applyingToInput:!initialization!public! !
!BootstrapRadioWebView categoriesFor: #onTrigger!configuring!public! !
!BootstrapRadioWebView categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapRadioWebView categoriesFor: #renderInputFor:asPartOf:on:!private/rendering!public! !
!BootstrapRadioWebView categoriesFor: #renderLabelContentFor:on:!private/rendering!public! !
!BootstrapRadioWebView categoriesFor: #renderLabelOn:with:!private/rendering!public! !
!BootstrapRadioWebView categoriesFor: #renderRadioButtonFor:asPartOf:on:!private/rendering!public! !

!BootstrapRadioWebView class methodsFor!

renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand	^self new		initializeRenderingWith: aRenderingBlock		applyingToLabel: aLabelCommand asWebComponentCommand		applyingToInput: anInputCommand asWebComponentCommand! !
!BootstrapRadioWebView class categoriesFor: #renderingWith:applyingToLabel:applyingToInput:!instance creation!public! !

