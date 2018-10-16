"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapDropdownBuilder
	instanceVariableNames: 'menuItems supplier buttonBinding listClassificationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDropdownBuilder guid: (GUID fromString: '{fcf541c4-6c2d-4ada-a7ee-9ef7311dc389}')!
BootstrapDropdownBuilder comment: 'I''m an abstract for building dropdown related components.'!
!BootstrapDropdownBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapDropdownBuilder methodsFor!

addActionLabeled: aRenderable executing: anActionBlock	self addActionLabeled: aRenderable executing: anActionBlock applying: [  ]!

addActionLabeled: aRenderable executing: anActionBlock applying: aCommand	| anchor |	anchor := supplier asynchronicLinkLabeled: aRenderable applying: [ :link :constants | (link setARIARoleTo: #button) + aCommand ].	anActionBlock value: anchor.	menuItems add: [ :canvas | canvas listItem: anchor ]!

addDivider	| dividerCommand |	dividerCommand := [ :listItem :constants | listItem addClass bootstrap divider + (listItem setARIARoleTo: #separator) ] asWebComponentCommand.	menuItems add: [ :canvas | dividerCommand applyTo: canvas listItem on: canvas ]!

addHeaderLabeled: aRenderable	menuItems add: [ :canvas | canvas listItem with: aRenderable applying: [ :listItem | listItem addClass bootstrap dropdownHeader ] ]!

beRightAligned	listClassificationCommand := listClassificationCommand + [ :list | list addClass bootstrap dropdownMenuRight ] asWebComponentCommand!

content	^ [ :canvas | 	canvas render: buttonBinding content.	canvas unorderedList with: [ menuItems do: [ :menuItem | canvas render: menuItem ] ] applying: listClassificationCommand ]!

dropdownCommandFor: button using: constants	^ button addClass bootstrap dropdownToggle + (button setData: constants >> #bootstrap >> #toggle to: constants >> #bootstrap >> #dropdown) + (button setARIAAttribute: 'haspopup' to: 'true')		+ (button setARIAAttribute: 'expanded' to: 'false')!

initializeUsing: aSupplier	supplier := aSupplier.	buttonBinding := Binding undefinedExplainedBy: 'Missing Dropdown Button Configuration'.	menuItems := OrderedCollection new.	listClassificationCommand := [ :list | list addClass bootstrap dropdownMenu ] asWebComponentCommand!

labeled: aRenderable applying: aComponentCommand	self subclassResponsibility!

renderCaretOn: canvas	canvas space.	canvas span apply: [ :span | span addClass bootstrap caret ]! !
!BootstrapDropdownBuilder categoriesFor: #addActionLabeled:executing:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addActionLabeled:executing:applying:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addDivider!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addHeaderLabeled:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #beRightAligned!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #content!private! !
!BootstrapDropdownBuilder categoriesFor: #dropdownCommandFor:using:!private! !
!BootstrapDropdownBuilder categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #renderCaretOn:!private! !

!BootstrapDropdownBuilder class methodsFor!

using: aComponentSupplier	^ self new initializeUsing: aComponentSupplier! !
!BootstrapDropdownBuilder class categoriesFor: #using:!instance creation!public! !

