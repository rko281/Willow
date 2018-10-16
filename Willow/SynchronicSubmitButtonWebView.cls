﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SynchronicSubmitButtonWebView
	instanceVariableNames: 'label commandToComponent interactionInterpreter identifierAssigner submitCallback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SynchronicSubmitButtonWebView guid: (GUID fromString: '{b3f2175a-ea86-4e94-b5f0-d4dc1dfe57d3}')!
SynchronicSubmitButtonWebView comment: 'I''m a submit button'!
!SynchronicSubmitButtonWebView categoriesForClass!Willow-WebViews! !
!SynchronicSubmitButtonWebView methodsFor!

identifier

identifyIn: aCanvas

initializeLabeled: aLabel applying: aCommandCollection evaluating: actionOnSubmit

onTrigger

renderContentOn: aCanvas
!SynchronicSubmitButtonWebView categoriesFor: #identifier!accessing!public! !
!SynchronicSubmitButtonWebView categoriesFor: #identifyIn:!configuring!public! !
!SynchronicSubmitButtonWebView categoriesFor: #initializeLabeled:applying:evaluating:!initialization!public! !
!SynchronicSubmitButtonWebView categoriesFor: #onTrigger!configuring!public! !
!SynchronicSubmitButtonWebView categoriesFor: #renderContentOn:!public!rendering! !

!SynchronicSubmitButtonWebView class methodsFor!

labeled: aLabel applying: aComponentCommand evaluating: actionOnSubmit
!SynchronicSubmitButtonWebView class categoriesFor: #labeled:applying:evaluating:!Instance Creation!public! !
