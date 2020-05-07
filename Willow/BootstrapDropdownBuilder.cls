"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapDropdownBuilder
	instanceVariableNames: 'supplier menuItems buttonBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDropdownBuilder guid: (GUID fromString: '{fcf541c4-6c2d-4ada-a7ee-9ef7311dc389}')!
BootstrapDropdownBuilder comment: ''!
!BootstrapDropdownBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapDropdownBuilder methodsFor!

addActionLabeled: aRenderable executing: anActionBlock	self addActionLabeled: aRenderable executing: anActionBlock applying: [  ]!

addActionLabeled: aRenderable executing: anActionBlock applying: aCommand	self subclassResponsibility!

addDivider	self subclassResponsibility!

addHeaderLabeled: aRenderable	self subclassResponsibility!

beRightAligned	self subclassResponsibility!

dropdownCommandFor: button using: constants	^ button addClass bootstrapCommon dropdownToggle		+ ( button setData: constants >> #bootstrap  >> #toggle to: constants >> #bootstrap >> #dropdown )		+ ( button setARIAAttribute: 'haspopup' to: 'true' )		+ ( button setARIAAttribute: 'expanded' to: 'false' )!

initializeUsing: aSupplier	supplier := aSupplier.	buttonBinding := Binding undefinedExplainedBy: 'Missing Dropdown Button Configuration'.	menuItems := OrderedCollection new!

labeled: aRenderable applying: aComponentCommand	self subclassResponsibility! !
!BootstrapDropdownBuilder categoriesFor: #addActionLabeled:executing:!configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addActionLabeled:executing:applying:!configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addDivider!configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addHeaderLabeled:!configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #beRightAligned!configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #dropdownCommandFor:using:!private! !
!BootstrapDropdownBuilder categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapDropdownBuilder categoriesFor: #labeled:applying:!configuring!public! !

!BootstrapDropdownBuilder class methodsFor!

isAbstract	^ self name = #BootstrapDropdownBuilder!

using: aComponentSupplier	^ self new initializeUsing: aComponentSupplier! !
!BootstrapDropdownBuilder class categoriesFor: #isAbstract!public!testing! !
!BootstrapDropdownBuilder class categoriesFor: #using:!instance creation!public! !

