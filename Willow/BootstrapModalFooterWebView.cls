"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapModalFooterWebView
	instanceVariableNames: 'closeButton buttons'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalFooterWebView guid: (GUID fromString: '{a4ebf23a-c954-49bc-af5f-2609549df554}')!
BootstrapModalFooterWebView comment: 'I represent the footer in a Bootstrap modal.'!
!BootstrapModalFooterWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapModalFooterWebView methodsFor!

initializeContaining: aButtonCollection andCloseButton: aCloseButton	buttons := aButtonCollection.	closeButton := aCloseButton !

onCloseTrigger	^ closeButton onTrigger!

onTrigger	^ CombinedWebInteractionInterpreter combiningInterpretersOf: buttons!

renderContentOn: aCanvas	aCanvas div		with: [ aCanvas render: closeButton.			buttons				do: [ :button | 					button identifyIn: aCanvas.					aCanvas render: button ] ]		applying: [ :div | div addClass bootstrap modalFooter ]! !
!BootstrapModalFooterWebView categoriesFor: #initializeContaining:andCloseButton:!initialize!public! !
!BootstrapModalFooterWebView categoriesFor: #onCloseTrigger!Configuring!public! !
!BootstrapModalFooterWebView categoriesFor: #onTrigger!Configuring!public! !
!BootstrapModalFooterWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapModalFooterWebView class methodsFor!

closeButtonLabeled: aRenderable applying: aComponentCommand	^ AsynchronicButtonWebView		labeled: aRenderable		applying: [ :button :constants | button addClass bootstrap button + (button setData: constants >> #bootstrap >> #dismiss to: constants >> #bootstrap >> #modal) + aComponentCommand ]!

containing: aButtonCollection andCloseButton: aCloseButton	^ self new initializeContaining: aButtonCollection andCloseButton: aCloseButton!

with: aButtonWebView andCloseButtonLabeled: aRenderable applyingToIt: aCloseButtonCommand	^ self containing: {aButtonWebView} andCloseButton: (self closeButtonLabeled: aRenderable applying: aCloseButtonCommand)!

withCloseButtonLabeled: aRenderable applying: aComponentCommand	^ self containing: #() andCloseButton: (self closeButtonLabeled: aRenderable applying: aComponentCommand)! !
!BootstrapModalFooterWebView class categoriesFor: #closeButtonLabeled:applying:!Building!public! !
!BootstrapModalFooterWebView class categoriesFor: #containing:andCloseButton:!Instance Creation!public! !
!BootstrapModalFooterWebView class categoriesFor: #with:andCloseButtonLabeled:applyingToIt:!Instance Creation!public! !
!BootstrapModalFooterWebView class categoriesFor: #withCloseButtonLabeled:applying:!Instance Creation!public! !

