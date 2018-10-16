﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #ImageWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent imageLocation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ImageWebView guid: (GUID fromString: '{7b1fe548-56cf-4957-a3df-96a4d5137f4a}')!
ImageWebView comment: 'I represent an image that can optionally be interactive.'!
!ImageWebView categoriesForClass!Willow-WebViews! !
!ImageWebView methodsFor!

initializeLocatedAt: aLocation applying: aComponentCommand

onTrigger

renderContentOn: aCanvas
!ImageWebView categoriesFor: #initializeLocatedAt:applying:!initialize/release!public! !
!ImageWebView categoriesFor: #onTrigger!configuring!public! !
!ImageWebView categoriesFor: #renderContentOn:!public!rendering! !

!ImageWebView class methodsFor!

locatedAt: aLocation applying: aComponentCommand

ofType: aMimeType base64EncodedAs: imageInBase64 applying: aComponentCommand
!ImageWebView class categoriesFor: #locatedAt:applying:!instance creation!public! !
!ImageWebView class categoriesFor: #ofType:base64EncodedAs:applying:!instance creation!public! !
