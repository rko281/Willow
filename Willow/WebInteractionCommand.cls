"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebInteractionCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WebInteractionCommand guid: (GUID fromString: '{1e65b705-e188-47b8-810c-8567f2241241}')!
WebInteractionCommand comment: ''!
!WebInteractionCommand categoriesForClass!Willow-WebInteraction! !
!WebInteractionCommand methodsFor!

clientIndependentActions	self subclassResponsibility!

modelLoadingActions	self subclassResponsibility!

priorityActions	self subclassResponsibility!

requiresSerialization	self subclassResponsibility!

serverIndependentActions	self subclassResponsibility! !
!WebInteractionCommand categoriesFor: #clientIndependentActions!accessing!public! !
!WebInteractionCommand categoriesFor: #modelLoadingActions!accessing!public! !
!WebInteractionCommand categoriesFor: #priorityActions!accessing!public! !
!WebInteractionCommand categoriesFor: #requiresSerialization!public!testing! !
!WebInteractionCommand categoriesFor: #serverIndependentActions!accessing!public! !

