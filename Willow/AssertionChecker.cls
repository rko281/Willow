﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AssertionChecker
	instanceVariableNames: 'asserter failurePolicy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AssertionChecker guid: (GUID fromString: '{b3519abb-e2ce-482b-8e19-6ce22f9a3dba}')!
AssertionChecker comment: 'I''m representing an Assertion Checker. My main objetive is to check a set of preconfigured facts and signal an error if some of them are not satisfied.'!
!AssertionChecker categoriesForClass!Buoy-Assertions! !
!AssertionChecker methodsFor!

check

initializeApplying: aFailurePolicy to: anAsserter
!AssertionChecker categoriesFor: #check!checking!public! !
!AssertionChecker categoriesFor: #initializeApplying:to:!initialization!public! !

!AssertionChecker class methodsFor!

applying: aFailurePolicy to: anAsserter

checkApplyingFailFastPolicyTo: asserter raising: errorToSignal

enforce: aFact because: aStringOrBlockExplanation

enforce: aFact because: aStringOrBlockExplanation raising: errorToSignal

refuse: aFact because: aStringOrBlockExplanation

refuse: aFact because: aStringOrBlockExplanation raising: errorToSignal
!AssertionChecker class categoriesFor: #applying:to:!instance creation!public! !
!AssertionChecker class categoriesFor: #checkApplyingFailFastPolicyTo:raising:!private! !
!AssertionChecker class categoriesFor: #enforce:because:!checking!public! !
!AssertionChecker class categoriesFor: #enforce:because:raising:!checking!public! !
!AssertionChecker class categoriesFor: #refuse:because:!checking!public! !
!AssertionChecker class categoriesFor: #refuse:because:raising:!checking!public! !
