﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapInputGroupWebView
	instanceVariableNames: 'inputGroupContainer textFieldWebView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapInputGroupWebView guid: (GUID fromString: '{89463cf1-d55f-49da-8759-91f020646555}')!
BootstrapInputGroupWebView comment: 'Extend form controls by adding text or buttons before, after, or on both sides of any text-based <input>'!
!BootstrapInputGroupWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapInputGroupWebView methodsFor!

identifier

identifyIn: aCanvas

initializeWrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand

renderContentOn: aCanvas
!BootstrapInputGroupWebView categoriesFor: #identifier!configuring!public! !
!BootstrapInputGroupWebView categoriesFor: #identifyIn:!configuring!public! !
!BootstrapInputGroupWebView categoriesFor: #initializeWrapping:between:and:applying:!initialization!public! !
!BootstrapInputGroupWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapInputGroupWebView class methodsFor!

appending: aWebViewToAppend to: aTextFieldWebView applying: aComponentCommand

prepending: aWebViewToPrepend to: aTextFieldWebView applying: aCompositeComponentCommand

wrapping: aTextFieldWebView between: aWebViewToPrepend and: aWebViewToAppend applying: aComponentCommand
!BootstrapInputGroupWebView class categoriesFor: #appending:to:applying:!Instance Creation!public! !
!BootstrapInputGroupWebView class categoriesFor: #prepending:to:applying:!Instance Creation!public! !
!BootstrapInputGroupWebView class categoriesFor: #wrapping:between:and:applying:!Instance Creation!public! !
