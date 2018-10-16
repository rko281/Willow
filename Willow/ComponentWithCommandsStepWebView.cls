"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ComponentWithCommandsStepWebView
	instanceVariableNames: 'input'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentWithCommandsStepWebView guid: (GUID fromString: '{026eb054-d642-436d-8724-d17ba7970c8b}')!
ComponentWithCommandsStepWebView comment: 'I''m a step showing a component with commands.'!
!ComponentWithCommandsStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ComponentWithCommandsStepWebView methodsFor!

description	^ 'Components can be configured with many commands'!

initialize	super initialize.	self initializeField !

initializeField input := TextFieldWebView	singleLineTriggeringOnChangeApplying:		[ :theField |	theField bePasswordInput + 				(theField setPlaceholderTo: 'Tell me your secrets') ]!

renderContentOn: aCanvas	self renderPanelWrapping: input on: aCanvas.		self renderSourceOf: #initializeField withBrowseButtonOn: aCanvas.!

shortName	^ 'Commands To Components'! !
!ComponentWithCommandsStepWebView categoriesFor: #description!accessing!public! !
!ComponentWithCommandsStepWebView categoriesFor: #initialize!initialization!public! !
!ComponentWithCommandsStepWebView categoriesFor: #initializeField!initialization!public! !
!ComponentWithCommandsStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ComponentWithCommandsStepWebView categoriesFor: #shortName!accessing!public! !

