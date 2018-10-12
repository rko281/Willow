"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapSplitButtonWebView
	instanceVariableNames: 'buttonGroup mainButton'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSplitButtonWebView guid: (GUID fromString: '{37bb8018-daeb-496c-9fb4-f0cda3435cb8}')!
BootstrapSplitButtonWebView comment: 'I''m a view representing an split button'!
!BootstrapSplitButtonWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapSplitButtonWebView methodsFor!

initializeWith: aGenericContainerWebView and: anAsynchronicButtonWebView	buttonGroup := aGenericContainerWebView.	mainButton := anAsynchronicButtonWebView!

onTrigger	^ mainButton onTrigger!

renderContentOn: aCanvas	aCanvas render: buttonGroup! !
!BootstrapSplitButtonWebView categoriesFor: #initializeWith:and:!initialization!public! !
!BootstrapSplitButtonWebView categoriesFor: #onTrigger!configuring!public! !
!BootstrapSplitButtonWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapSplitButtonWebView class methodsFor!

with: aGenericContainerWebView and: anAsynchronicButtonWebView	^ self new initializeWith: aGenericContainerWebView and: anAsynchronicButtonWebView! !
!BootstrapSplitButtonWebView class categoriesFor: #with:and:!Instance Creation!public! !

