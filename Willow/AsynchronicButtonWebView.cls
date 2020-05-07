"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #AsynchronicButtonWebView
	instanceVariableNames: 'identifierAssigner commandToComponent interactionInterpreter label'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AsynchronicButtonWebView guid: (GUID fromString: '{2bb99a83-cafe-446b-9f46-d39ee21993a4}')!
AsynchronicButtonWebView comment: 'I''m a push button used to trigger actions using AJAX'!
!AsynchronicButtonWebView categoriesForClass!Willow-Core-WebViews! !
!AsynchronicButtonWebView methodsFor!

identifier	^ identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeLabeled: aLabel applying: aComponentCommand	label := aLabel.	commandToComponent := aComponentCommand.	identifierAssigner := IdentifierAssigner prefixedBy: 'button'.	interactionInterpreter := WebInteractionInterpreter forClickOnComponent!

onTrigger	^interactionInterpreter!

renderContentOn: aCanvas	"We send bePush to the button because, by default, Seaside made it with type = submit"	| pushButton |	pushButton := aCanvas button.	identifierAssigner withAssignedIdentifierDo: [ :id | pushButton id: id ].	pushButton		value: label;		bePush;		interactUsing: interactionInterpreter;		apply: commandToComponent! !
!AsynchronicButtonWebView categoriesFor: #identifier!accessing!public! !
!AsynchronicButtonWebView categoriesFor: #identifyIn:!configuring!public! !
!AsynchronicButtonWebView categoriesFor: #initializeLabeled:applying:!initialization!public! !
!AsynchronicButtonWebView categoriesFor: #onTrigger!configuring!public! !
!AsynchronicButtonWebView categoriesFor: #renderContentOn:!public!rendering! !

!AsynchronicButtonWebView class methodsFor!

labeled: aLabel	^ self labeled: aLabel applying: [ :button |  ]!

labeled: aLabel applying: aComponentCommand	^ self new initializeLabeled: aLabel applying: aComponentCommand asWebComponentCommand! !
!AsynchronicButtonWebView class categoriesFor: #labeled:!Instance Creation!public! !
!AsynchronicButtonWebView class categoriesFor: #labeled:applying:!Instance Creation!public! !

