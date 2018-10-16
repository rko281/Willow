"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapInputGroupWebView
	instanceVariableNames: 'inputGroupContainer textFieldWebView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapInputGroupWebView guid: (GUID fromString: '{89463cf1-d55f-49da-8759-91f020646555}')!
BootstrapInputGroupWebView comment: 'Extend form controls by adding text or buttons before, after, or on both sides of any text-based <input>'!
!BootstrapInputGroupWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapInputGroupWebView methodsFor!

identifier	^ textFieldWebView identifier!

identifyIn: aCanvas	^ textFieldWebView identifyIn: aCanvas!

initializeWrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand	textFieldWebView := aTextFieldWebView.	inputGroupContainer := GenericContainerWebView		wrapping: [ :canvas | 			canvas				render: aWebViewToPrepend;				render: textFieldWebView;				render: aWebViewToAppend ]		applying: aComponentCommand!

renderContentOn: aCanvas	aCanvas render: inputGroupContainer! !
!BootstrapInputGroupWebView categoriesFor: #identifier!configuring!public! !
!BootstrapInputGroupWebView categoriesFor: #identifyIn:!configuring!public! !
!BootstrapInputGroupWebView categoriesFor: #initializeWrapping:between:and:applying:!initialization!public! !
!BootstrapInputGroupWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapInputGroupWebView class methodsFor!

appending: aWebViewToAppend to: aTextFieldWebView applying: aComponentCommand	^ self		wrapping: aTextFieldWebView		between: [  ]		and: aWebViewToAppend		applying: aComponentCommand!

prepending: aWebViewToPrepend to: aTextFieldWebView applying: aCompositeComponentCommand	^ self		wrapping: aTextFieldWebView		between: aWebViewToPrepend		and: [  ]		applying: aCompositeComponentCommand!

wrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand	^ self new		initializeWrapping: aTextFieldWebView		between: aWebViewToPrepend		and: aWebViewToAppend		applying: [ :group | group addClass bootstrap inputGroup + aComponentCommand ] asWebComponentCommand! !
!BootstrapInputGroupWebView class categoriesFor: #appending:to:applying:!Instance Creation!public! !
!BootstrapInputGroupWebView class categoriesFor: #prepending:to:applying:!Instance Creation!public! !
!BootstrapInputGroupWebView class categoriesFor: #wrapping:between:and:applying:!Instance Creation!public! !

