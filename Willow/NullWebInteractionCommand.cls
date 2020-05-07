"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #NullWebInteractionCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NullWebInteractionCommand guid: (GUID fromString: '{8ccfc4ed-14c2-4492-b623-caba83547a2b}')!
NullWebInteractionCommand comment: 'I represent a null web interaction command, so no javascript is generated when applied.'!
!NullWebInteractionCommand categoriesForClass!Willow-Core-WebInteraction! !
!NullWebInteractionCommand methodsFor!

clientIndependentActions	^#()!

modelLoadingActions	^#()!

priorityActions	^#()!

requiresSerialization	^false!

serverIndependentActions	^#()! !
!NullWebInteractionCommand categoriesFor: #clientIndependentActions!accessing!public! !
!NullWebInteractionCommand categoriesFor: #modelLoadingActions!accessing!public! !
!NullWebInteractionCommand categoriesFor: #priorityActions!accessing!public! !
!NullWebInteractionCommand categoriesFor: #requiresSerialization!public!testing! !
!NullWebInteractionCommand categoriesFor: #serverIndependentActions!accessing!public! !

