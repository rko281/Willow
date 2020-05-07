"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #LinkWebView
	instanceVariableNames: 'commandToComponent interactionInterpreter label'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LinkWebView guid: (GUID fromString: '{d5f0dcbd-cb70-42aa-b99a-97fde90c05d4}')!
LinkWebView comment: 'I''m an anchor acting as a push button, capable of triggering actions by AJAX'!
!LinkWebView categoriesForClass!Willow-Core-WebViews! !
!LinkWebView methodsFor!

initializeLabeled: aLabel applying: aComponentCommand	label := aLabel.	commandToComponent := aComponentCommand.	interactionInterpreter := WebInteractionInterpreter forClickOnComponent!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	aCanvas anchor		interactUsing: interactionInterpreter;		with: label applying: commandToComponent! !
!LinkWebView categoriesFor: #initializeLabeled:applying:!initialization!public! !
!LinkWebView categoriesFor: #onTrigger!configuring!public! !
!LinkWebView categoriesFor: #renderContentOn:!public!rendering! !

!LinkWebView class methodsFor!

asynchronicLabeled: aRenderable applying: aComponentCommand	| linkView |	linkView := self labeled: aRenderable applying: aComponentCommand.	linkView onTrigger executeOnClient: [ :canvas | canvas jQuery event preventDefault ].	^ linkView!

labeled: aLabel applying: aComponentCommand	^ self new initializeLabeled: aLabel applying: aComponentCommand asWebComponentCommand!

synchronicLabeled: aRenderable applying: aComponentCommand	"We send the private message to ensure that all instances are declared as either synchronic or asynchronic"	^ self labeled: aRenderable applying: aComponentCommand! !
!LinkWebView class categoriesFor: #asynchronicLabeled:applying:!instance creation!public! !
!LinkWebView class categoriesFor: #labeled:applying:!private / instance creation!public! !
!LinkWebView class categoriesFor: #synchronicLabeled:applying:!instance creation!public! !

