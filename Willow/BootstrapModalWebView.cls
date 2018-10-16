﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapModalWebView
	instanceVariableNames: 'footer dialog header'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalWebView guid: (GUID fromString: '{978ea95e-8e8e-46dd-a213-1abac2e585a9}')!
BootstrapModalWebView comment: 'I represent a Bootstrap Modal.'!
!BootstrapModalWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapModalWebView methodsFor!

contentWrapping: aBodyView

documentWrapping: content applying: aDocumentCommand

initializeWithHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aModalDocumentCommand

onCloseTrigger

onTrigger

renderContentOn: aCanvas
!BootstrapModalWebView categoriesFor: #contentWrapping:!private! !
!BootstrapModalWebView categoriesFor: #documentWrapping:applying:!private! !
!BootstrapModalWebView categoriesFor: #initializeWithHeader:content:footer:applyingToDialog:andToDocument:!initialize!public! !
!BootstrapModalWebView categoriesFor: #onCloseTrigger!Configuring!public! !
!BootstrapModalWebView categoriesFor: #onTrigger!Configuring!public! !
!BootstrapModalWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapModalWebView class methodsFor!

withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter

withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andModalDocument: aModalDocumentCommand
!BootstrapModalWebView class categoriesFor: #withHeader:content:footer:!Instance Creation!public! !
!BootstrapModalWebView class categoriesFor: #withHeader:content:footer:applyingToDialog:andModalDocument:!Instance Creation!public! !
