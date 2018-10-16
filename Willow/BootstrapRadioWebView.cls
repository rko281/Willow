﻿"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #BootstrapRadioWebView
	instanceVariableNames: 'interactionInterpreter renderingBlock identifierAssigner labelCommand inputCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapRadioWebView guid: (GUID fromString: '{89b805da-71f2-4867-a60d-b4c1307248d5}')!
BootstrapRadioWebView comment: 'I''m a radio button group specifically designed to use the html structure required by Bootstrap.'!
!BootstrapRadioWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapRadioWebView methodsFor!

identifyIn: aCanvas

initializeRenderingWith: aRenderingBlock

onTrigger

renderContentOn: aCanvas

renderInputFor: anElement asPartOf: aRadioGroup on: aCanvas

renderLabelContentFor: anElement on: aCanvas

renderLabelOn: aCanvas with: aRenderable

renderRadioButtonFor: anElement asPartOf: aRadioGroup on: aCanvas
!BootstrapRadioWebView categoriesFor: #identifyIn:!configuring!public! !
!BootstrapRadioWebView categoriesFor: #initializeRenderingWith:applyingToLabel:applyingToInput:!initialization!public! !
!BootstrapRadioWebView categoriesFor: #onTrigger!configuring!public! !
!BootstrapRadioWebView categoriesFor: #renderContentOn:!public!rendering! !
!BootstrapRadioWebView categoriesFor: #renderInputFor:asPartOf:on:!private/rendering!public! !
!BootstrapRadioWebView categoriesFor: #renderLabelContentFor:on:!private/rendering!public! !
!BootstrapRadioWebView categoriesFor: #renderLabelOn:with:!private/rendering!public! !
!BootstrapRadioWebView categoriesFor: #renderRadioButtonFor:asPartOf:on:!private/rendering!public! !

!BootstrapRadioWebView class methodsFor!

renderingWith: aRenderingBlock applyingToLabel: aLabelCommand applyingToInput: anInputCommand
!BootstrapRadioWebView class categoriesFor: #renderingWith:applyingToLabel:applyingToInput:!instance creation!public! !
