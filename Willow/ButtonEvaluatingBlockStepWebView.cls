"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ButtonEvaluatingBlockStepWebView
	instanceVariableNames: 'button'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ButtonEvaluatingBlockStepWebView guid: (GUID fromString: '{5b690f1c-c4d6-46bb-802b-dd7d0bbe3a14}')!
ButtonEvaluatingBlockStepWebView comment: 'I''m a step showing a button evaluating a callback.'!
!ButtonEvaluatingBlockStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ButtonEvaluatingBlockStepWebView methodsFor!

description	^ 'This button will open an inspector on the image'!

initialize	super initialize.	self initializeButton!

initializeButton button := AsynchronicButtonWebView labeled: 'Click... then check your image'. button onTrigger evaluate: [ 'The button was clicked on the browser' inspect ] !

renderContentOn: aCanvas	self renderPanelWrapping: button on: aCanvas.		self renderSourceOf: #initializeButton withBrowseButtonOn: aCanvas.!

shortName	^ 'A Server Effect Button'! !
!ButtonEvaluatingBlockStepWebView categoriesFor: #description!accessing!public! !
!ButtonEvaluatingBlockStepWebView categoriesFor: #initialize!initialization!public! !
!ButtonEvaluatingBlockStepWebView categoriesFor: #initializeButton!initialization!public! !
!ButtonEvaluatingBlockStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ButtonEvaluatingBlockStepWebView categoriesFor: #shortName!accessing!public! !

