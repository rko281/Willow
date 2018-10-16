"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AssertionFailurePolicy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AssertionFailurePolicy guid: (GUID fromString: '{21b5687a-07b9-440d-b592-4ba9e7b5a6e2}')!
AssertionFailurePolicy comment: 'I represent an assertion failure policy that applies to some asserter. My purpose is to define how to handle an assertion failure.'!
!AssertionFailurePolicy categoriesForClass!Buoy-Assertions! !
!AssertionFailurePolicy methodsFor!

applyTo: anAsserter	anAsserter checkApplying: self!

assertionFailedBecause: aFailureExplanation 	self subclassResponsibility! !
!AssertionFailurePolicy categoriesFor: #applyTo:!applying!public! !
!AssertionFailurePolicy categoriesFor: #assertionFailedBecause:!notifying!public! !

!AssertionFailurePolicy class methodsFor!

defaultErrorToSignal	^ AssertionFailed!

raising: anErrorClass	^ self subclassResponsibility! !
!AssertionFailurePolicy class categoriesFor: #defaultErrorToSignal!Accessing!public! !
!AssertionFailurePolicy class categoriesFor: #raising:!Instance Creation!public! !

