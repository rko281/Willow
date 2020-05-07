"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapDismissButton
	instanceVariableNames: 'dismissButton'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDismissButton guid: (GUID fromString: '{e3881ddd-32ca-4f93-a430-0b44522a458c}')!
BootstrapDismissButton comment: 'I''m a dismiss button able to dismiss modals or alerts.'!
!BootstrapDismissButton categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapDismissButton methodsFor!

initializeDismissing: aContainerType	dismissButton := AsynchronicButtonWebView		labeled:			( PhrasingContainerWebView				wrapping: '×'				applying: [ :span | span setARIAAttribute: 'hidden' to: 'true' ] )		applying: [ :button :constants | 			button addClass bootstrapCommon close				+ ( button setData: constants >> #bootstrap >> #dismiss to: aContainerType )				+ ( button setARIAAttribute: 'label' to: 'Close' )			]!

onTrigger	^ dismissButton onTrigger!

renderContentOn: aCanvas	aCanvas render: dismissButton! !
!BootstrapDismissButton categoriesFor: #initializeDismissing:!initialization!public! !
!BootstrapDismissButton categoriesFor: #onTrigger!configuring!public! !
!BootstrapDismissButton categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapDismissButton class methodsFor!

dismissing: aContainerType	^ self new initializeDismissing: aContainerType! !
!BootstrapDismissButton class categoriesFor: #dismissing:!Instance Creation!public! !

