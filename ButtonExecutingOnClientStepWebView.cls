"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ButtonExecutingOnClientStepWebView
	instanceVariableNames: 'button'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ButtonExecutingOnClientStepWebView guid: (GUID fromString: '{846a0b93-a2a5-4b84-8430-79fa7d025e40}')!
ButtonExecutingOnClientStepWebView comment: 'I''m a step showing a button executing code on the client.'!
!ButtonExecutingOnClientStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ButtonExecutingOnClientStepWebView methodsFor!

description	^ 'This button will trigger an action on the browser'!

initialize	super initialize.	self initializeButton!

initializeButton	button := AsynchronicButtonWebView labeled: 'Now it''s time to click'.	button onTrigger executeOnClient: [ :canvas | canvas javascript alert: 'You just clicked a button' ]!

renderContentOn: aCanvas	self renderPanelWrapping: button on: aCanvas.		self renderSourceOf: #initializeButton withBrowseButtonOn: aCanvas.!

shortName	^ 'A Client Effect Button'! !
!ButtonExecutingOnClientStepWebView categoriesFor: #description!accessing!public! !
!ButtonExecutingOnClientStepWebView categoriesFor: #initialize!initialization!public! !
!ButtonExecutingOnClientStepWebView categoriesFor: #initializeButton!initialization!public! !
!ButtonExecutingOnClientStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ButtonExecutingOnClientStepWebView categoriesFor: #shortName!accessing!public! !

