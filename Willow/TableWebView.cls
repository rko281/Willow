﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #TableWebView
	instanceVariableNames: 'columnRenderers items interested header interactionInterpreter commandToRow commandToTable identifierAssigner footer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TableWebView guid: (GUID fromString: '{332de118-824b-4c22-b26e-3c30be5499a3}')!
TableWebView comment: 'A view to represent an html table'!
!TableWebView categoriesForClass!Willow-WebViews! !
!TableWebView methodsFor!

changeContentsTo: anElementCollection

contents

identifier

identifyIn: aCanvas

initializeDefinedBy: aColumnRendererCollection applying: aTableCommand headerRenderedBy: aHeader applyingToEachRow: aRowCommand footerRenderedBy: aFooter

notifyChangesTo: aSupervisor

notifyInterested

onTrigger

renderContentOn: aCanvas

renderRowAt: anIndex for: anItem on: aCanvas
!TableWebView categoriesFor: #changeContentsTo:!container/API!public! !
!TableWebView categoriesFor: #contents!container/API!public! !
!TableWebView categoriesFor: #identifier!accessing!public! !
!TableWebView categoriesFor: #identifyIn:!configuring!public! !
!TableWebView categoriesFor: #initializeDefinedBy:applying:headerRenderedBy:applyingToEachRow:footerRenderedBy:!initialize/release!public! !
!TableWebView categoriesFor: #notifyChangesTo:!container/API!public! !
!TableWebView categoriesFor: #notifyInterested!private! !
!TableWebView categoriesFor: #onTrigger!configuring!public! !
!TableWebView categoriesFor: #renderContentOn:!public!rendering! !
!TableWebView categoriesFor: #renderRowAt:for:on:!private! !

!TableWebView class methodsFor!

definedBy: aColumnRendererCollection applying: aTableCommand headerRenderedBy: aHeader applyingToEachRow: aRowCommand footerRenderedBy: aFooter
!TableWebView class categoriesFor: #definedBy:applying:headerRenderedBy:applyingToEachRow:footerRenderedBy:!instance creation!public! !
