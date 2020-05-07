"Filed out from Dolphin Smalltalk 7"!

Bootstrap3DropdownBuilder subclass: #Bootstrap3NavigationDropdownMenuBuilder
	instanceVariableNames: 'containerBuildingCommand navigationBarBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3NavigationDropdownMenuBuilder guid: (GUID fromString: '{165ceec9-bae5-448c-bfca-45c9a94ae676}')!
Bootstrap3NavigationDropdownMenuBuilder comment: 'I''m a builder of bootstrap dropdown menus'!
!Bootstrap3NavigationDropdownMenuBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3NavigationDropdownMenuBuilder methodsFor!

buildApplying: aComponentCommand	^ ListItemWebView		itemizing: self content		containedIn: self navigationBar		applying: [ :listItem | aComponentCommand asWebComponentCommand + listItem addClass bootstrap3 dropdown ]!

containedIn: aNavigationBar	navigationBarBinding := Binding to: aNavigationBar!

initializeUsing: aSupplier	super initializeUsing: aSupplier.	navigationBarBinding := Binding undefinedExplainedBy: 'Missing navigation bar container'!

labeled: aRenderable	buttonBinding := Binding to:		(supplier			asynchronicLinkLabeled: [ :canvas | 				canvas render: aRenderable.				self renderCaretOn: canvas ]			applying: [ :button :constants | (button setARIARoleTo: #button) + (self dropdownCommandFor: button using: constants) ])!

labeled: aRenderable applying: aComponentCommand	buttonBinding := Binding to:		(supplier			asynchronicButtonLabeled: [ :canvas | 				canvas render: aRenderable.				self renderCaretOn: canvas ]			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])!

navigationBar	^ navigationBarBinding content! !
!Bootstrap3NavigationDropdownMenuBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap3NavigationDropdownMenuBuilder categoriesFor: #containedIn:!Configuring!public! !
!Bootstrap3NavigationDropdownMenuBuilder categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap3NavigationDropdownMenuBuilder categoriesFor: #labeled:!Configuring!public! !
!Bootstrap3NavigationDropdownMenuBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!Bootstrap3NavigationDropdownMenuBuilder categoriesFor: #navigationBar!private! !

