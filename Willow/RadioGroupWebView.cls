"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #RadioGroupWebView
	instanceVariableNames: 'interactionInterpreter renderingBlock labelCommand inputCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RadioGroupWebView guid: (GUID fromString: '{3174a1af-8614-4f07-bed1-145ff038e02f}')!
RadioGroupWebView comment: 'I''m a group of radio buttons allowing the user to select one of many options.'!
!RadioGroupWebView categoriesForClass!Willow-Core-WebViews! !
!RadioGroupWebView methodsFor!

initializeRenderingWith: aRenderingBlock	applyingToLabel: aLabelCommand	applyingToInput: anInputCommand	labelCommand := aLabelCommand.	inputCommand := anInputCommand.	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.	renderingBlock := aRenderingBlock!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	aCanvas radioGroup		callback: [ :element | self choose: element ];		with: [ :radioGroup | 			chosenElementOptional withContentDo: [ :chosenElement | radioGroup selected: chosenElement ].			availableElements do: [ :element | self renderRadioButtonFor: element asPartOf: radioGroup on: aCanvas ] ]!

renderLabelContentFor: anElement on: aCanvas	aCanvas render: (renderingBlock value: anElement)!

renderLabelFor: radioButtonId on: aCanvas with: aRenderable	aCanvas label		for: radioButtonId;		with: aRenderable applying: labelCommand!

renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas	| radioButtonId |	radioButtonId := (IdentifierAssigner prefixedBy: 'radio-button') identifyIn: aCanvas.	self		renderLabelFor: radioButtonId		on: aCanvas		with: [ aRadioGroup radioButton				id: radioButtonId;				apply: inputCommand;				interactUsing: interactionInterpreter;				value: anElement.			self renderLabelContentFor: anElement on: aCanvas ]! !
!RadioGroupWebView categoriesFor: #initializeRenderingWith:applyingToLabel:applyingToInput:!initialization!public! !
!RadioGroupWebView categoriesFor: #onTrigger!configuring!public! !
!RadioGroupWebView categoriesFor: #renderContentOn:!public!rendering! !
!RadioGroupWebView categoriesFor: #renderLabelContentFor:on:!private/rendering!public! !
!RadioGroupWebView categoriesFor: #renderLabelFor:on:with:!private/rendering!public! !
!RadioGroupWebView categoriesFor: #renderRadioButtonFor:asPartOf:on:!private/rendering!public! !

!RadioGroupWebView class methodsFor!

new	^self 		renderingWith: #'yourself'		applyingToLabel: [:group | ]		applyingToInput: []!

renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand	^super new		initializeRenderingWith: aRenderingBlock		applyingToLabel: aLabelCommand asWebComponentCommand		applyingToInput: anInputCommand asWebComponentCommand! !
!RadioGroupWebView class categoriesFor: #new!Instance creation!public! !
!RadioGroupWebView class categoriesFor: #renderingWith:applyingToLabel:applyingToInput:!Instance creation!public! !

