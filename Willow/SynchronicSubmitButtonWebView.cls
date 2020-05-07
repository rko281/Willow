"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SynchronicSubmitButtonWebView
	instanceVariableNames: 'label commandToComponent interactionInterpreter identifierAssigner submitCallback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SynchronicSubmitButtonWebView guid: (GUID fromString: '{b3f2175a-ea86-4e94-b5f0-d4dc1dfe57d3}')!
SynchronicSubmitButtonWebView comment: 'I''m a submit button'!
!SynchronicSubmitButtonWebView categoriesForClass!Willow-Core-WebViews! !
!SynchronicSubmitButtonWebView methodsFor!

identifier	^ identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeLabeled: aLabel applying: aCommandCollection evaluating: actionOnSubmit	label := aLabel.	commandToComponent := aCommandCollection.	interactionInterpreter := WebInteractionInterpreter forClickOnComponent.	submitCallback := actionOnSubmit.	identifierAssigner := IdentifierAssigner prefixedBy: 'submit-button'!

onTrigger	^interactionInterpreter!

renderContentOn: aCanvas	| submitButton |	submitButton := aCanvas button.	identifierAssigner withAssignedIdentifierDo: [ :id | submitButton id: id ].	submitButton		callback: submitCallback;		value: label;		interactUsing: interactionInterpreter;		apply: commandToComponent! !
!SynchronicSubmitButtonWebView categoriesFor: #identifier!accessing!public! !
!SynchronicSubmitButtonWebView categoriesFor: #identifyIn:!configuring!public! !
!SynchronicSubmitButtonWebView categoriesFor: #initializeLabeled:applying:evaluating:!initialization!public! !
!SynchronicSubmitButtonWebView categoriesFor: #onTrigger!configuring!public! !
!SynchronicSubmitButtonWebView categoriesFor: #renderContentOn:!public!rendering! !

!SynchronicSubmitButtonWebView class methodsFor!

labeled: aLabel applying: aComponentCommand evaluating: actionOnSubmit	^ self new		initializeLabeled: aLabel		applying: aComponentCommand asWebComponentCommand		evaluating: actionOnSubmit! !
!SynchronicSubmitButtonWebView class categoriesFor: #labeled:applying:evaluating:!Instance Creation!public! !

