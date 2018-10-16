"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #SetComponentStyleCommand
	instanceVariableNames: 'style'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentStyleCommand guid: (GUID fromString: '{5195ecbc-d272-45d8-9e2f-8d24eb84a8ba}')!
SetComponentStyleCommand comment: 'A command to set the style of a component.'!
!SetComponentStyleCommand categoriesForClass!Willow-Frontend! !
!SetComponentStyleCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent style: style  !

initializeSetting: aStyle	style := aStyle! !
!SetComponentStyleCommand categoriesFor: #applyTo:on:!processing!public! !
!SetComponentStyleCommand categoriesFor: #initializeSetting:!initialization!public! !

!SetComponentStyleCommand class methodsFor!

setting: aStyle	^self new initializeSetting: aStyle! !
!SetComponentStyleCommand class categoriesFor: #setting:!Instance Creation!public! !

