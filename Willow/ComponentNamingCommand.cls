"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentNamingCommand
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentNamingCommand guid: (GUID fromString: '{d0373bbf-b6e2-4c6a-bb4d-a10459d54969}')!
ComponentNamingCommand comment: 'A command to set the name of a component.'!
!ComponentNamingCommand categoriesForClass!Willow-Frontend! !
!ComponentNamingCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent name: name!

initializeAssigning: aName	name := aName! !
!ComponentNamingCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentNamingCommand categoriesFor: #initializeAssigning:!initialization!public! !

!ComponentNamingCommand class methodsFor!

assigning: aName	^self new initializeAssigning: aName! !
!ComponentNamingCommand class categoriesFor: #assigning:!Instance Creation!public! !

