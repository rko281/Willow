﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #PhrasingContainerWebView
	instanceVariableNames: 'phrasingContentProvider interactionInterpreter commandToComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PhrasingContainerWebView guid: (GUID fromString: '{8c334f1d-fa4e-4ff1-9e83-84440bec1d53}')!
PhrasingContainerWebView comment: 'I represent a generic container for phrasing content, which don''t inherently represent anything. 
!PhrasingContainerWebView categoriesForClass!Willow-WebViews! !
!PhrasingContainerWebView methodsFor!

initializeObtainingContentFrom: aContentProvider applying: aComponentCommand

onTrigger

renderContentOn: aCanvas
!PhrasingContainerWebView categoriesFor: #initializeObtainingContentFrom:applying:!initialization!public! !
!PhrasingContainerWebView categoriesFor: #onTrigger!configuring!public! !
!PhrasingContainerWebView categoriesFor: #renderContentOn:!public!rendering! !

!PhrasingContainerWebView class methodsFor!

obtainingContentFrom: aContentProvider

obtainingContentFrom: aContentProvider applying: aComponentCommand

wrapping: aString applying: aComponentCommand
!PhrasingContainerWebView class categoriesFor: #obtainingContentFrom:!Instance Creation!public! !
!PhrasingContainerWebView class categoriesFor: #obtainingContentFrom:applying:!Instance Creation!public! !
!PhrasingContainerWebView class categoriesFor: #wrapping:applying:!Instance Creation!public! !
