"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #AddTimestampToSourceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AddTimestampToSourceCommand guid: (GUID fromString: '{d13a5902-d481-429e-9dd8-dec329f7c436}')!
AddTimestampToSourceCommand comment: 'Command to append the time to the src attribute. Useful when working with images.'!
!AddTimestampToSourceCommand categoriesForClass!Willow-Core-Frontend! !
!AddTimestampToSourceCommand methodsFor!

applyTo: aComponent on: aCanvas	(aComponent attributeAt: 'src') addField: 'time' value: Time millisecondClockValue! !
!AddTimestampToSourceCommand categoriesFor: #applyTo:on:!processing!public! !

