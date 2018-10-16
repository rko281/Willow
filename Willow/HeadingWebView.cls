﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #HeadingWebView
	instanceVariableNames: 'text level commandToComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HeadingWebView guid: (GUID fromString: '{ab8702ab-5d2f-4bf5-b381-71ec6b6d36b0}')!
HeadingWebView comment: 'I represent a document heading'!
!HeadingWebView categoriesForClass!Willow-WebViews! !
!HeadingWebView methodsFor!

initializeDisplaying: aHeadingText withLevel: aLevel applying: aCommand

renderContentOn: aCanvas
!HeadingWebView categoriesFor: #initializeDisplaying:withLevel:applying:!initialization!public! !
!HeadingWebView categoriesFor: #renderContentOn:!public!rendering! !

!HeadingWebView class methodsFor!

displaying: aHeadingText withLevel: aLevel

displaying: aHeadingText withLevel: aLevel applying: aCommand
!HeadingWebView class categoriesFor: #displaying:withLevel:!Instance Creation!public! !
!HeadingWebView class categoriesFor: #displaying:withLevel:applying:!Instance Creation!public! !
