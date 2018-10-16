﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #IdentifiedWebView
	instanceVariableNames: 'view componentBuilder commandToComponent identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IdentifiedWebView guid: (GUID fromString: '{ae19fffd-fde0-4bb3-8f92-6573be4a2392}')!
IdentifiedWebView comment: 'I''m a web view guaranteed to have an id and used usually to swap my child content'!
!IdentifiedWebView categoriesForClass!Willow-WebViews! !
!IdentifiedWebView methodsFor!

componentRenderedOn: aCanvas

identifier

identifyIn: aCanvas

initializeForComponentBuiltUsing: aComponentBuilder as: anIdentificationPrefix containing: aView applying: aComponentCommand

onTrigger

renderContentOn: aCanvas

view
!IdentifiedWebView categoriesFor: #componentRenderedOn:!private! !
!IdentifiedWebView categoriesFor: #identifier!accessing!public! !
!IdentifiedWebView categoriesFor: #identifyIn:!configuring!public! !
!IdentifiedWebView categoriesFor: #initializeForComponentBuiltUsing:as:containing:applying:!initialize/release!public! !
!IdentifiedWebView categoriesFor: #onTrigger!configuring!public! !
!IdentifiedWebView categoriesFor: #renderContentOn:!public!rendering! !
!IdentifiedWebView categoriesFor: #view!accessing!public! !

!IdentifiedWebView class methodsFor!

forComponentBuiltUsing: aComponentBuilder named: aName containing: aView

forComponentBuiltUsing: aComponentBuilder named: aName containing: aView applying: aComponentCommand

forDivNamed: aName containing: aView

forDivNamed: aName containing: aView applying: aComponentCommand

forFormNamed: aName containing: aView

forFormNamed: aName containing: aView applying: aComponentCommand

forLabeledFieldNamed: aName containing: aView

forRowNamed: aName containing: aView

forSpanNamed: aName containing: aView
!IdentifiedWebView class categoriesFor: #forComponentBuiltUsing:named:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forComponentBuiltUsing:named:containing:applying:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forDivNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forDivNamed:containing:applying:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forFormNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forFormNamed:containing:applying:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forLabeledFieldNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forRowNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forSpanNamed:containing:!instance creation!public! !
