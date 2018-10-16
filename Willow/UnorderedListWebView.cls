﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #UnorderedListWebView
	instanceVariableNames: 'elements commandToItem commandToList interactionInterpreter identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnorderedListWebView guid: (GUID fromString: '{f322af3e-974e-4505-ab7b-1b5689d6920d}')!
UnorderedListWebView comment: 'I represent an unordered list supporting command application.'!
!UnorderedListWebView categoriesForClass!Willow-WebViews! !
!UnorderedListWebView methodsFor!

identifier

identifyIn: aCanvas

initializeApplying: aComponentCommand listing: anElementCollection applyingToEach: anElementCommand

onTrigger

renderContentOn: aCanvas
!UnorderedListWebView categoriesFor: #identifier!accessing!public! !
!UnorderedListWebView categoriesFor: #identifyIn:!configuring!public! !
!UnorderedListWebView categoriesFor: #initializeApplying:listing:applyingToEach:!initialization!public! !
!UnorderedListWebView categoriesFor: #onTrigger!configuring!public! !
!UnorderedListWebView categoriesFor: #renderContentOn:!public!rendering! !

!UnorderedListWebView class methodsFor!

applying: aComponentCommand listing: anElementCollection applyingToEach: anElementCommand
!UnorderedListWebView class categoriesFor: #applying:listing:applyingToEach:!instance creation!public! !
