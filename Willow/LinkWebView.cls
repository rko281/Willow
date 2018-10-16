﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #LinkWebView
	instanceVariableNames: 'commandToComponent interactionInterpreter label'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LinkWebView guid: (GUID fromString: '{d5f0dcbd-cb70-42aa-b99a-97fde90c05d4}')!
LinkWebView comment: 'I''m an anchor acting as a push button, capable of triggering actions by AJAX'!
!LinkWebView categoriesForClass!Willow-WebViews! !
!LinkWebView methodsFor!

initializeLabeled: aLabel applying: aComponentCommand

onTrigger

renderContentOn: aCanvas
!LinkWebView categoriesFor: #initializeLabeled:applying:!initialization!public! !
!LinkWebView categoriesFor: #onTrigger!configuring!public! !
!LinkWebView categoriesFor: #renderContentOn:!public!rendering! !

!LinkWebView class methodsFor!

asynchronicLabeled: aRenderable applying: aComponentCommand

labeled: aLabel applying: aComponentCommand

synchronicLabeled: aRenderable applying: aComponentCommand
!LinkWebView class categoriesFor: #asynchronicLabeled:applying:!instance creation!public! !
!LinkWebView class categoriesFor: #labeled:applying:!private / instance creation!public! !
!LinkWebView class categoriesFor: #synchronicLabeled:applying:!instance creation!public! !
