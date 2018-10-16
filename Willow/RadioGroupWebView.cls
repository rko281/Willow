﻿"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #RadioGroupWebView
	instanceVariableNames: 'interactionInterpreter renderingBlock labelCommand inputCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RadioGroupWebView guid: (GUID fromString: '{3174a1af-8614-4f07-bed1-145ff038e02f}')!
RadioGroupWebView comment: 'I''m a group of radio buttons allowing the user to select one of many options.'!
!RadioGroupWebView categoriesForClass!Willow-WebViews! !
!RadioGroupWebView methodsFor!

initializeRenderingWith: aRenderingBlock

onTrigger

renderContentOn: aCanvas

renderLabelContentFor: anElement on: aCanvas

renderLabelFor: radioButtonId on: aCanvas with: aRenderable

renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas
!RadioGroupWebView categoriesFor: #initializeRenderingWith:applyingToLabel:applyingToInput:!initialization!public! !
!RadioGroupWebView categoriesFor: #onTrigger!configuring!public! !
!RadioGroupWebView categoriesFor: #renderContentOn:!public!rendering! !
!RadioGroupWebView categoriesFor: #renderLabelContentFor:on:!private/rendering!public! !
!RadioGroupWebView categoriesFor: #renderLabelFor:on:with:!private/rendering!public! !
!RadioGroupWebView categoriesFor: #renderRadioButtonFor:asPartOf:on:!private/rendering!public! !

!RadioGroupWebView class methodsFor!

new

renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand
!RadioGroupWebView class categoriesFor: #new!Instance creation!public! !
!RadioGroupWebView class categoriesFor: #renderingWith:applyingToLabel:applyingToInput:!Instance creation!public! !
