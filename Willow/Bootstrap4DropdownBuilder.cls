"Filed out from Dolphin Smalltalk 7"!

BootstrapDropdownBuilder subclass: #Bootstrap4DropdownBuilder
	instanceVariableNames: 'menuClassificationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4DropdownBuilder guid: (GUID fromString: '{9d127886-55dc-4b62-a74f-399cc73238ac}')!
Bootstrap4DropdownBuilder comment: ''!
!Bootstrap4DropdownBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4DropdownBuilder methodsFor!

addActionLabeled: aRenderable executing: anActionBlock applying: aCommand	| anchor |	anchor := supplier		asynchronicLinkLabeled: aRenderable		applying: [ :link :constants | 			( link setARIARoleTo: #button ) + ( link setAttribute: 'href' to: '#' )				+ link addClass bootstrap4 dropdownItem + aCommand			].	anActionBlock value: anchor.	menuItems add: anchor!

addDivider	| dividerCommand |	dividerCommand := [ :div :constants | div addClass bootstrap4 dropdownDivider + ( div setARIARoleTo: #separator ) ]		asWebComponentCommand.	menuItems add: [ :canvas | dividerCommand applyTo: canvas div on: canvas ]!

addHeaderLabeled: aRenderable	menuItems		add: [ :canvas | 			canvas heading				level: 6;				with: aRenderable applying: [ :heading | heading addClass bootstrap4 dropdownHeader ]			]!

beRightAligned	menuClassificationCommand := menuClassificationCommand		+ [ :list | list addClass bootstrap4 dropdownMenuRight ] asWebComponentCommand!

content	^ [ :canvas | 	canvas render: buttonBinding content.	canvas div with: menuItems applying: menuClassificationCommand	]!

initializeUsing: aSupplier	super initializeUsing: aSupplier.	menuClassificationCommand := [ :div | div addClass bootstrap4 dropdownMenu ] asWebComponentCommand! !
!Bootstrap4DropdownBuilder categoriesFor: #addActionLabeled:executing:applying:!configuring!public! !
!Bootstrap4DropdownBuilder categoriesFor: #addDivider!configuring!public! !
!Bootstrap4DropdownBuilder categoriesFor: #addHeaderLabeled:!configuring!public! !
!Bootstrap4DropdownBuilder categoriesFor: #beRightAligned!configuring!public! !
!Bootstrap4DropdownBuilder categoriesFor: #content!private! !
!Bootstrap4DropdownBuilder categoriesFor: #initializeUsing:!initialization!public! !

