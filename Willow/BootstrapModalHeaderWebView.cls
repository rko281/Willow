"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapModalHeaderWebView
	instanceVariableNames: 'title dismissButtonOptional'
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
BootstrapModalHeaderWebView guid: (GUID fromString: '{d0f86bc1-3cfd-41ed-94da-7c927b9c1a24}')!
BootstrapModalHeaderWebView comment: 'I represent the header in a Bootstrap modal. I can include the dismiss button or not.'!
!BootstrapModalHeaderWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapModalHeaderWebView methodsFor!

initializeTitled: aRenderable dismissedUsing: aButtonOptional	title := aRenderable.	dismissButtonOptional := aButtonOptional!

onCloseTrigger	^ dismissButtonOptional withContentDo: [ :dismissButton | dismissButton onTrigger ] ifUnused: [ WebInteractionInterpreter workingWith: WebComponentInteraction neverTriggered ]!

renderContentOn: aCanvas	aCanvas div		with: [ dismissButtonOptional withContentDo: [ :dismissButton | aCanvas render: dismissButton ].			aCanvas heading				level4;				with: title applying: [ :heading | heading addClass bootstrapCommon modalTitle ]			]		applying: [ :div | div addClass bootstrapCommon modalHeader ]! !
!BootstrapModalHeaderWebView categoriesFor: #initializeTitled:dismissedUsing:!initialize!public! !
!BootstrapModalHeaderWebView categoriesFor: #onCloseTrigger!Configuring!public! !
!BootstrapModalHeaderWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapModalHeaderWebView class methodsFor!

dismissableTitled: aRenderable	^ self titled: aRenderable dismissedUsing: (Optional containing: self dismissButton)!

dismissButton	^ BootstrapDismissButton dismissing: Constants >> #bootstrap >> #modal!

titled: aRenderable	^ self titled: aRenderable dismissedUsing: Optional unused!

titled: aRenderable dismissedUsing: aButtonOptional	^ self new initializeTitled: aRenderable dismissedUsing: aButtonOptional! !
!BootstrapModalHeaderWebView class categoriesFor: #dismissableTitled:!Instance Creation!public! !
!BootstrapModalHeaderWebView class categoriesFor: #dismissButton!private / Instance Creation!public! !
!BootstrapModalHeaderWebView class categoriesFor: #titled:!Instance Creation!public! !
!BootstrapModalHeaderWebView class categoriesFor: #titled:dismissedUsing:!private / Instance Creation!public! !

