"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #DeselectAllOptionsCommand
	instanceVariableNames: 'scriptCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DeselectAllOptionsCommand guid: (GUID fromString: '{738ad5d9-6058-4f53-990d-93891b52fb30}')!
DeselectAllOptionsCommand comment: 'A command to deselect all the options in a select'!
!DeselectAllOptionsCommand categoriesForClass!Willow-Core-Frontend! !
!DeselectAllOptionsCommand methodsFor!

applyTo: aSelect on: aCanvas	scriptCommand applyTo: aSelect on: aCanvas!

initialize	super initialize.	scriptCommand := ComponentScriptCommand toExecute: [ :canvas | canvas jQuery this propertyAt: 'selectedIndex' put: -1 ]! !
!DeselectAllOptionsCommand categoriesFor: #applyTo:on:!processing!public! !
!DeselectAllOptionsCommand categoriesFor: #initialize!initialization!public! !

