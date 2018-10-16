"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MessageSendingCollector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MessageSendingCollector guid: (GUID fromString: '{4de3c900-6b2e-499e-b228-848f3979d60f}')!
MessageSendingCollector comment: ''!
!MessageSendingCollector categoriesForClass!Buoy-Metaprogramming! !
!MessageSendingCollector methodsFor!

filterBlock	^ self subclassResponsibility!

matchingSelectorsCollect: aTransformationBlock	^ self receiver class allSelectors asSortedCollection		select: self filterBlock		thenCollect: aTransformationBlock!

receiver	^ self subclassResponsibility!

value	^ self subclassResponsibility! !
!MessageSendingCollector categoriesFor: #filterBlock!private! !
!MessageSendingCollector categoriesFor: #matchingSelectorsCollect:!private! !
!MessageSendingCollector categoriesFor: #receiver!private! !
!MessageSendingCollector categoriesFor: #value!evaluating!public! !

