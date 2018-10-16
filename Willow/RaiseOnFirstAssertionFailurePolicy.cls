﻿"Filed out from Dolphin Smalltalk 7"!

AssertionFailurePolicy subclass: #RaiseOnFirstAssertionFailurePolicy
	instanceVariableNames: 'errorClass'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RaiseOnFirstAssertionFailurePolicy guid: (GUID fromString: '{fe3b2485-0605-46ee-b68b-3436aa8df3b8}')!
RaiseOnFirstAssertionFailurePolicy comment: 'I''m an assertion policy that raises and exception on the first assertion failure (failing fast)'!
!RaiseOnFirstAssertionFailurePolicy categoriesForClass!Buoy-Assertions! !
!RaiseOnFirstAssertionFailurePolicy methodsFor!

assertionFailedBecause: aFailureExplanation

initializeRaising: anErrorClass
!RaiseOnFirstAssertionFailurePolicy categoriesFor: #assertionFailedBecause:!notifying!public! !
!RaiseOnFirstAssertionFailurePolicy categoriesFor: #initializeRaising:!initialization!public! !

!RaiseOnFirstAssertionFailurePolicy class methodsFor!

raising: anErrorClass
!RaiseOnFirstAssertionFailurePolicy class categoriesFor: #raising:!Instance Creation!public! !
