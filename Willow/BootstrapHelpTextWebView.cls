﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapHelpTextWebView
	instanceVariableNames: 'fieldWebView helpText'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapHelpTextWebView guid: (GUID fromString: '{9eaa1954-49a2-4bb2-89b0-413326641b7e}')!
BootstrapHelpTextWebView comment: 'Block level help text for form controls.'!
!BootstrapHelpTextWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapHelpTextWebView methodsFor!

identifyIn: aCanvas

initializeBoundTo: aFieldWebView describedBy: aHelpText

renderContentOn: aCanvas
!BootstrapHelpTextWebView categoriesFor: #identifyIn:!configuring!public! !
!BootstrapHelpTextWebView categoriesFor: #initializeBoundTo:describedBy:!initialization!public! !
!BootstrapHelpTextWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapHelpTextWebView class methodsFor!

boundTo: aFieldWebView describedBy: aHelpText
!BootstrapHelpTextWebView class categoriesFor: #boundTo:describedBy:!Instance Creation!public! !
