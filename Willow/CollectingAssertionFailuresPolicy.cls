﻿"Filed out from Dolphin Smalltalk 7"!

AssertionFailurePolicy subclass: #CollectingAssertionFailuresPolicy
	instanceVariableNames: 'failures errorClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CollectingAssertionFailuresPolicy guid: (GUID fromString: '{9970e233-5074-4f13-ab04-15f892e1eb11}')!
CollectingAssertionFailuresPolicy comment: 'I''m an assertion policy that collect the failure explanations, and try to keep evaluating the following conditions.'!
!CollectingAssertionFailuresPolicy categoriesForClass!Buoy-Assertions! !
!CollectingAssertionFailuresPolicy methodsFor!

applyTo: anAsserter

assertionFailedBecause: aFailureExplanation  

initializeRaising: anErrorClass
!CollectingAssertionFailuresPolicy categoriesFor: #applyTo:!applying!public! !
!CollectingAssertionFailuresPolicy categoriesFor: #assertionFailedBecause:!notifying!public! !
!CollectingAssertionFailuresPolicy categoriesFor: #initializeRaising:!initialization!public! !

!CollectingAssertionFailuresPolicy class methodsFor!

raising: anErrorClass
!CollectingAssertionFailuresPolicy class categoriesFor: #raising:!Instance Creation!public! !
