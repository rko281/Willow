"Filed out from Dolphin Smalltalk 7"!

BootstrapDropdownBuilder subclass: #Bootstrap3DropdownBuilder
	instanceVariableNames: 'listClassificationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3DropdownBuilder guid: (GUID fromString: '{f779c1ef-9dee-47a8-813c-21d30d8532c3}')!
Bootstrap3DropdownBuilder comment: 'I''m an abstract for building dropdown related components.'!
!Bootstrap3DropdownBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3DropdownBuilder methodsFor!

addActionLabeled: aRenderable executing: anActionBlock applying: aCommand	| anchor |	anchor := supplier asynchronicLinkLabeled: aRenderable applying: [ :link :constants | (link setARIARoleTo: #button) + aCommand ].	anActionBlock value: anchor.	menuItems add: [ :canvas | canvas listItem: anchor ]!

addDivider	| dividerCommand |	dividerCommand := [ :listItem :constants | listItem addClass bootstrap3 divider + ( listItem setARIARoleTo: #separator ) ]		asWebComponentCommand.	menuItems add: [ :canvas | dividerCommand applyTo: canvas listItem on: canvas ]!

addHeaderLabeled: aRenderable	menuItems		add: [ :canvas | 			canvas listItem				with: aRenderable				applying: [ :listItem | listItem addClass bootstrap3 dropdownHeader ]			]!

beRightAligned	listClassificationCommand := listClassificationCommand		+ [ :list | list addClass bootstrap3 dropdownMenuRight ] asWebComponentCommand!

content	^ [ :canvas | 	canvas render: buttonBinding content.	canvas unorderedList with: menuItems applying: listClassificationCommand	]!

initializeUsing: aSupplier	super initializeUsing: aSupplier.	listClassificationCommand := [ :list | list addClass bootstrap3 dropdownMenu ]		asWebComponentCommand!

renderCaretOn: canvas	canvas space.	canvas span apply: [ :span | span addClass bootstrap3 caret ]! !
!Bootstrap3DropdownBuilder categoriesFor: #addActionLabeled:executing:applying:!Configuring!public! !
!Bootstrap3DropdownBuilder categoriesFor: #addDivider!Configuring!public! !
!Bootstrap3DropdownBuilder categoriesFor: #addHeaderLabeled:!Configuring!public! !
!Bootstrap3DropdownBuilder categoriesFor: #beRightAligned!Configuring!public! !
!Bootstrap3DropdownBuilder categoriesFor: #content!private! !
!Bootstrap3DropdownBuilder categoriesFor: #initializeUsing:!initialization!public! !
!Bootstrap3DropdownBuilder categoriesFor: #renderCaretOn:!private! !

