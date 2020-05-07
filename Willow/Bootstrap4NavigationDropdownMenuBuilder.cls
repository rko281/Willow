"Filed out from Dolphin Smalltalk 7"!

Bootstrap4DropdownBuilder subclass: #Bootstrap4NavigationDropdownMenuBuilder
	instanceVariableNames: 'containerBuildingCommand navigationBarBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4NavigationDropdownMenuBuilder guid: (GUID fromString: '{e46da6f7-768a-4e3e-b65a-edb7ca06156c}')!
Bootstrap4NavigationDropdownMenuBuilder comment: ''!
!Bootstrap4NavigationDropdownMenuBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4NavigationDropdownMenuBuilder methodsFor!

buildApplying: aComponentCommand	^ ListItemWebView		itemizing: self content		containedIn: self navigationBar		applying: [ :listItem | 			aComponentCommand asWebComponentCommand + listItem addClass bootstrap4 dropdown				+ listItem addClass bootstrap4 navItem			]!

containedIn: aNavigationBar	navigationBarBinding := Binding to: aNavigationBar!

initializeUsing: aSupplier	super initializeUsing: aSupplier.	navigationBarBinding := Binding undefinedExplainedBy: 'Missing navigation bar container'!

labeled: aRenderable	self labeled: aRenderable applying: [  ]!

labeled: aRenderable applying: aComponentCommand	buttonBinding := Binding to:		( supplier			asynchronicLinkLabeled: aRenderable			applying: [ :link :constants | 				( self dropdownCommandFor: link using: constants ) + ( link setAttribute: 'href' to: '#' )					+ link addClass bootstrap4 navLink + aComponentCommand				] )!

navigationBar	^ navigationBarBinding content! !
!Bootstrap4NavigationDropdownMenuBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap4NavigationDropdownMenuBuilder categoriesFor: #containedIn:!Configuring!public! !
!Bootstrap4NavigationDropdownMenuBuilder categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap4NavigationDropdownMenuBuilder categoriesFor: #labeled:!Configuring!public! !
!Bootstrap4NavigationDropdownMenuBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!Bootstrap4NavigationDropdownMenuBuilder categoriesFor: #navigationBar!private! !

