"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #StyledButtonStepWebView
	instanceVariableNames: 'button'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
StyledButtonStepWebView guid: (GUID fromString: '{2065b8ff-23dc-4e0b-8bf7-8e87ac8ef990}')!
StyledButtonStepWebView comment: 'I''m a step showing a button with some sytle.'!
!StyledButtonStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!StyledButtonStepWebView methodsFor!

description	^ 'You can add special styles to components'!

initialize	super initialize.	self initializeButton!

initializeButton button := AsynchronicButtonWebView	labeled: 'Primary Bootstrap Button'	applying:		[ :theButton | theButton addClass bootstrap button + 				theButton addClass bootstrap buttonPrimary ]!

renderContentOn: aCanvas	self renderPanelWrapping: button on: aCanvas.		self renderSourceOf: #initializeButton withBrowseButtonOn: aCanvas.!

shortName	^ 'A Styled Button'! !
!StyledButtonStepWebView categoriesFor: #description!accessing!public! !
!StyledButtonStepWebView categoriesFor: #initialize!initialization!public! !
!StyledButtonStepWebView categoriesFor: #initializeButton!initialization!public! !
!StyledButtonStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!StyledButtonStepWebView categoriesFor: #shortName!accessing!public! !

