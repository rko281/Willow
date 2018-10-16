"Filed out from Dolphin Smalltalk 7"!

TriggeringPolicy subclass: #NullTriggeringPolicy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NullTriggeringPolicy guid: (GUID fromString: '{882505d6-f976-435e-bcce-90463664b2d0}')!
NullTriggeringPolicy comment: 'I''m a triggering policy specifing that no triggering must happen. So if someone tries to use me I will fail.'!
!NullTriggeringPolicy categoriesForClass!Willow-WebInteraction! !
!NullTriggeringPolicy methodsFor!

apply: anAsynchronousCall to: aComponent on: aCanvas	Error signal: 'Trying to generate interactive script for component declared as non-interactive'! !
!NullTriggeringPolicy categoriesFor: #apply:to:on:!evaluating!public! !

