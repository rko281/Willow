﻿"Filed out from Dolphin Smalltalk 7"!

TableFooterWebViewBehavior subclass: #TableFooterWebView
	instanceVariableNames: 'columnRenderers tableContents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TableFooterWebView guid: (GUID fromString: '{9b7e28ee-2a12-4f6a-b16c-c8a70ddf93d9}')!
TableFooterWebView comment: 'I represent a table footer'!
!TableFooterWebView categoriesForClass!Willow-WebViews! !
!TableFooterWebView methodsFor!

changeNotifiedBy: aTableWebView

initializeDefinedBy: aColumnRendererCollection

renderContentOn: aCanvas
!TableFooterWebView categoriesFor: #changeNotifiedBy:!public!support! !
!TableFooterWebView categoriesFor: #initializeDefinedBy:!initialization!public! !
!TableFooterWebView categoriesFor: #renderContentOn:!public!rendering! !

!TableFooterWebView class methodsFor!

definedBy: aColumnRendererCollection
!TableFooterWebView class categoriesFor: #definedBy:!Instance Creation!public! !
