"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentAttributeCommand
	instanceVariableNames: 'name value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentAttributeCommand guid: (GUID fromString: '{0d8bbacc-e987-4b33-bb25-0d46a91c1a79}')!
ComponentAttributeCommand comment: 'Command to set an attribute for a component'!
!ComponentAttributeCommand categoriesForClass!Willow-Core-Frontend! !
!ComponentAttributeCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent attributeAt: name put: value!

initializeNamed: aName with: aValue	name := aName.	value := aValue! !
!ComponentAttributeCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentAttributeCommand categoriesFor: #initializeNamed:with:!initialization!public! !

!ComponentAttributeCommand class methodsFor!

named: aName with: aValue	^self new initializeNamed: aName with: aValue! !
!ComponentAttributeCommand class categoriesFor: #named:with:!Instance Creation!public! !

