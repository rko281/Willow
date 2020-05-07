"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #DisableComponentTabCycleCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DisableComponentTabCycleCommand guid: (GUID fromString: '{159603e3-df58-483f-8783-cf37e0b830e1}')!
DisableComponentTabCycleCommand comment: 'Command to remove a component for the tab cycle'!
!DisableComponentTabCycleCommand categoriesForClass!Willow-Core-Frontend! !
!DisableComponentTabCycleCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent tabIndex: -1! !
!DisableComponentTabCycleCommand categoriesFor: #applyTo:on:!processing!public! !

