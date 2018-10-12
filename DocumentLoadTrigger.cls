"Filed out from Dolphin Smalltalk 7"!

TriggeringPolicy subclass: #DocumentLoadTrigger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DocumentLoadTrigger guid: (GUID fromString: '{07f2f795-46f8-47c7-9c85-2560ccf8895a}')!
DocumentLoadTrigger comment: ''!
!DocumentLoadTrigger categoriesForClass!Willow-WebInteraction! !
!DocumentLoadTrigger methodsFor!

apply: anAsynchronousCall to: aComponent on: aCanvas	aCanvas document addLoadScript: anAsynchronousCall! !
!DocumentLoadTrigger categoriesFor: #apply:to:on:!evaluating!public! !

