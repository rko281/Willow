"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentReadOnlyCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentReadOnlyCommand guid: (GUID fromString: '{f1022212-ba50-4b62-9e0a-6ef393a1ca19}')!
ComponentReadOnlyCommand comment: 'A command to mark a component as read-only.'!
!ComponentReadOnlyCommand categoriesForClass!Willow-Core-Frontend! !
!ComponentReadOnlyCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent readonly: true! !
!ComponentReadOnlyCommand categoriesFor: #applyTo:on:!processing!public! !

