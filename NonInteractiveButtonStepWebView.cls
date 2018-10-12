"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #NonInteractiveButtonStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NonInteractiveButtonStepWebView guid: (GUID fromString: '{e0ece1dc-ef22-4787-b982-1f2c1eb03451}')!
NonInteractiveButtonStepWebView comment: 'I''m a step showing a non interactive button'!
!NonInteractiveButtonStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!NonInteractiveButtonStepWebView methodsFor!

description	^ 'Starting small: a non-interactive button'!

nonInteractiveButton	^ AsynchronicButtonWebView labeled: 'Nothing to do'!

renderContentOn: aCanvas	self renderPanelWrapping: self nonInteractiveButton on: aCanvas.		self renderSourceOf: #nonInteractiveButton withBrowseButtonOn: aCanvas.!

shortName	^ 'A Simple Button'! !
!NonInteractiveButtonStepWebView categoriesFor: #description!accessing!public! !
!NonInteractiveButtonStepWebView categoriesFor: #nonInteractiveButton!private/accessing!public! !
!NonInteractiveButtonStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!NonInteractiveButtonStepWebView categoriesFor: #shortName!accessing!public! !

