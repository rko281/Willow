"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #GenericContainerWebView
	instanceVariableNames: 'contentProvider interactionInterpreter commandToComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GenericContainerWebView guid: (GUID fromString: '{989a8858-ef82-462e-ae25-c62c64d03827}')!
GenericContainerWebView comment: 'I''m a generic container suitable for all the non-phrasing content'!
!GenericContainerWebView categoriesForClass!Willow-Core-WebViews! !
!GenericContainerWebView methodsFor!

initializeObtainingContentFrom: aContentProvider applying: aComponentCommand	contentProvider := aContentProvider.	commandToComponent := aComponentCommand.	interactionInterpreter := WebInteractionInterpreter forClickOnComponent !

onTrigger	^interactionInterpreter !

renderContentOn: aCanvas	aCanvas div		interactUsing: interactionInterpreter;		with: contentProvider value applying: commandToComponent! !
!GenericContainerWebView categoriesFor: #initializeObtainingContentFrom:applying:!initialization!public! !
!GenericContainerWebView categoriesFor: #onTrigger!configuring!public! !
!GenericContainerWebView categoriesFor: #renderContentOn:!public!rendering! !

!GenericContainerWebView class methodsFor!

obtainingContentFrom: aContentProvider	^ self obtainingContentFrom: aContentProvider applying: [ :container |  ]!

obtainingContentFrom: aContentProvider applying: aComponentCommand	^ self new initializeObtainingContentFrom: aContentProvider applying: aComponentCommand asWebComponentCommand !

wrapping: aRenderable applying: aComponentCommand	^ self obtainingContentFrom: [ aRenderable ] applying: aComponentCommand! !
!GenericContainerWebView class categoriesFor: #obtainingContentFrom:!Instance Creation!public! !
!GenericContainerWebView class categoriesFor: #obtainingContentFrom:applying:!Instance Creation!public! !
!GenericContainerWebView class categoriesFor: #wrapping:applying:!Instance Creation!public! !

