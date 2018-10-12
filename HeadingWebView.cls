"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #HeadingWebView
	instanceVariableNames: 'text level commandToComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HeadingWebView guid: (GUID fromString: '{ab8702ab-5d2f-4bf5-b381-71ec6b6d36b0}')!
HeadingWebView comment: 'I represent a document heading'!
!HeadingWebView categoriesForClass!Willow-WebViews! !
!HeadingWebView methodsFor!

initializeDisplaying: aHeadingText withLevel: aLevel applying: aCommand	text := aHeadingText.	level := aLevel.	commandToComponent := aCommand!

renderContentOn: aCanvas	aCanvas heading		level: level;		with: text applying: commandToComponent! !
!HeadingWebView categoriesFor: #initializeDisplaying:withLevel:applying:!initialization!public! !
!HeadingWebView categoriesFor: #renderContentOn:!public!rendering! !

!HeadingWebView class methodsFor!

displaying: aHeadingText withLevel: aLevel	^ self displaying: aHeadingText withLevel: aLevel applying: [ :container |  ]!

displaying: aHeadingText withLevel: aLevel applying: aCommand	^self new initializeDisplaying: aHeadingText withLevel: aLevel applying: aCommand asWebComponentCommand ! !
!HeadingWebView class categoriesFor: #displaying:withLevel:!Instance Creation!public! !
!HeadingWebView class categoriesFor: #displaying:withLevel:applying:!Instance Creation!public! !

