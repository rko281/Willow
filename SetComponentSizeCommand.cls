"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #SetComponentSizeCommand
	instanceVariableNames: 'size'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentSizeCommand guid: (GUID fromString: '{a6e64bd9-d261-40c8-9dc4-c37c3eea9ac8}')!
SetComponentSizeCommand comment: 'A command to set the size of a component, in combo boxes this implies the number of visible options.'!
!SetComponentSizeCommand categoriesForClass!Willow-Frontend! !
!SetComponentSizeCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent size: size!

initializeSetting: aSize	size := aSize! !
!SetComponentSizeCommand categoriesFor: #applyTo:on:!processing!public! !
!SetComponentSizeCommand categoriesFor: #initializeSetting:!initialize/release!public! !

!SetComponentSizeCommand class methodsFor!

setting: aSize	^self new initializeSetting: aSize! !
!SetComponentSizeCommand class categoriesFor: #setting:!instance creation!public! !

