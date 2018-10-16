﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #AsynchronicButtonWebView
	instanceVariableNames: 'identifierAssigner commandToComponent interactionInterpreter label'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AsynchronicButtonWebView guid: (GUID fromString: '{2bb99a83-cafe-446b-9f46-d39ee21993a4}')!
AsynchronicButtonWebView comment: 'I''m a push button used to trigger actions using AJAX'!
!AsynchronicButtonWebView categoriesForClass!Willow-WebViews! !
!AsynchronicButtonWebView methodsFor!

identifier

identifyIn: aCanvas

initializeLabeled: aLabel applying: aComponentCommand

onTrigger

renderContentOn: aCanvas
!AsynchronicButtonWebView categoriesFor: #identifier!accessing!public! !
!AsynchronicButtonWebView categoriesFor: #identifyIn:!configuring!public! !
!AsynchronicButtonWebView categoriesFor: #initializeLabeled:applying:!initialization!public! !
!AsynchronicButtonWebView categoriesFor: #onTrigger!configuring!public! !
!AsynchronicButtonWebView categoriesFor: #renderContentOn:!public!rendering! !

!AsynchronicButtonWebView class methodsFor!

labeled: aLabel

labeled: aLabel applying: aComponentCommand
!AsynchronicButtonWebView class categoriesFor: #labeled:!Instance Creation!public! !
!AsynchronicButtonWebView class categoriesFor: #labeled:applying:!Instance Creation!public! !
