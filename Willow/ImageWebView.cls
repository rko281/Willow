"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #ImageWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent imageLocation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ImageWebView guid: (GUID fromString: '{7b1fe548-56cf-4957-a3df-96a4d5137f4a}')!
ImageWebView comment: 'I represent an image that can optionally be interactive.'!
!ImageWebView categoriesForClass!Willow-Core-WebViews! !
!ImageWebView methodsFor!

initializeLocatedAt: aLocation applying: aComponentCommand	imageLocation := aLocation.	commandToComponent := aComponentCommand.	interactionInterpreter := WebInteractionInterpreter forClickOnComponent!

onTrigger	^interactionInterpreter!

renderContentOn: aCanvas	aCanvas image		url: imageLocation;		apply: commandToComponent;		interactUsing: interactionInterpreter! !
!ImageWebView categoriesFor: #initializeLocatedAt:applying:!initialize/release!public! !
!ImageWebView categoriesFor: #onTrigger!configuring!public! !
!ImageWebView categoriesFor: #renderContentOn:!public!rendering! !

!ImageWebView class methodsFor!

locatedAt: aLocation applying: aComponentCommand	^ self new initializeLocatedAt: aLocation applying: aComponentCommand asWebComponentCommand !

ofType: aMimeType base64EncodedAs: imageInBase64 applying: aComponentCommand	^ self locatedAt: ('data:<1s>;base64,<2s>' expandMacrosWith: aMimeType greaseString with: imageInBase64) applying: aComponentCommand! !
!ImageWebView class categoriesFor: #locatedAt:applying:!instance creation!public! !
!ImageWebView class categoriesFor: #ofType:base64EncodedAs:applying:!instance creation!public! !

