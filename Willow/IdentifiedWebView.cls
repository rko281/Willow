"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #IdentifiedWebView
	instanceVariableNames: 'view componentBuilder commandToComponent identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IdentifiedWebView guid: (GUID fromString: '{a709bdde-777d-4bcd-9390-325b9ff2379d}')!
IdentifiedWebView comment: 'I''m a web view guaranteed to have an id and used usually to swap my child content'!
!IdentifiedWebView categoriesForClass!Willow-Core-WebViews! !
!IdentifiedWebView methodsFor!

componentRenderedOn: aCanvas	^ componentBuilder value: aCanvas!

identifier	^identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeForComponentBuiltUsing: aComponentBuilder as: anIdentificationPrefix containing: aView applying: aComponentCommand	view := aView.	componentBuilder := aComponentBuilder.	commandToComponent := aComponentCommand.	identifierAssigner := IdentifierAssigner prefixedBy: anIdentificationPrefix!

onTrigger	^view onTrigger!

renderContentOn: aCanvas	| identifier containerComponent |	identifier := self identifyIn: aCanvas.	containerComponent := self componentRenderedOn: aCanvas.	"We need to set the id before applying the commands, because some command may require it"	containerComponent		id: identifier;		with: view applying: commandToComponent!

view	^view! !
!IdentifiedWebView categoriesFor: #componentRenderedOn:!private! !
!IdentifiedWebView categoriesFor: #identifier!accessing!public! !
!IdentifiedWebView categoriesFor: #identifyIn:!configuring!public! !
!IdentifiedWebView categoriesFor: #initializeForComponentBuiltUsing:as:containing:applying:!initialize/release!public! !
!IdentifiedWebView categoriesFor: #onTrigger!configuring!public! !
!IdentifiedWebView categoriesFor: #renderContentOn:!public!rendering! !
!IdentifiedWebView categoriesFor: #view!accessing!public! !

!IdentifiedWebView class methodsFor!

forComponentBuiltUsing: aComponentBuilder named: aName containing: aView	^ self		forComponentBuiltUsing: aComponentBuilder		named: aName		containing: aView		applying: [  ]!

forComponentBuiltUsing: aComponentBuilder named: aName containing: aView applying: aComponentCommand	"Arguments:		- aComponentBuilder - aValuable taking aCanvas as its argument		- aName - the id of the HTML tag; will be mangled automatically to avoid conflicts		- aView - my contents		- aComponentCommand - Convertible to WebComponentCommand. Browse implementors of #asWebComponentCommand"	^ self new		initializeForComponentBuiltUsing: aComponentBuilder		as: aName		containing: aView		applying: aComponentCommand asWebComponentCommand !

forDivNamed: aName containing: aView	^ self forDivNamed: aName containing: aView applying: [ :container |  ]!

forDivNamed: aName containing: aView applying: aComponentCommand	^self		forComponentBuiltUsing: [:canvas | canvas div]		named: aName		containing: aView		applying: aComponentCommand!

forFormNamed: aName containing: aView	^ self forFormNamed: aName containing: aView applying: [ :container |  ]!

forFormNamed: aName containing: aView applying: aComponentCommand	^ self		forComponentBuiltUsing: [ :canvas | canvas form doNotSubmit ]		named: aName		containing: aView		applying: aComponentCommand!

forLabeledFieldNamed: aName containing: aView	^ self forComponentBuiltUsing: [ :canvas | canvas fieldSet apply: [ :fieldSet | fieldSet addClass willow ] ] named: aName containing: aView!

forRowNamed: aName containing: aView	^ self		forComponentBuiltUsing: [ :canvas | canvas tableRow ]		named: aName		containing: aView!

forSpanNamed: aName containing: aView	^ self forSpanNamed: aName containing: aView applying: [ ]!

forSpanNamed: aName containing: aView applying: aComponentCommand	^ self forComponentBuiltUsing: [ :canvas | canvas span ] named: aName containing: aView applying: aComponentCommand! !
!IdentifiedWebView class categoriesFor: #forComponentBuiltUsing:named:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forComponentBuiltUsing:named:containing:applying:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forDivNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forDivNamed:containing:applying:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forFormNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forFormNamed:containing:applying:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forLabeledFieldNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forRowNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forSpanNamed:containing:!instance creation!public! !
!IdentifiedWebView class categoriesFor: #forSpanNamed:containing:applying:!instance creation!public! !

