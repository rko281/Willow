﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Asserter
	instanceVariableNames: 'checks'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Asserter guid: (GUID fromString: '{54e81e81-6a57-4daa-b40b-00df063d9e5f}')!
Asserter comment: 'I''m a helper for Assertion Checker. Not intended to be used directly.'!
!Asserter categoriesForClass!Buoy-Assertions! !
!Asserter methodsFor!

asReverseFact: aFact

checkApplying: aPolicy

enforce: aFact because: aStringOrBlock

enforce: aFact because: anExplanationStringOrBlock onSuccess: aSuccessAction

initialize

refuse: aFact because: aStringOrBlock

refuse: aFact because: anExplanationStringOrBlock onSuccess: aSuccessAction

value: aSuccessAction applying: policy
!Asserter categoriesFor: #asReverseFact:!private! !
!Asserter categoriesFor: #checkApplying:!Checking!public! !
!Asserter categoriesFor: #enforce:because:!configuring!public! !
!Asserter categoriesFor: #enforce:because:onSuccess:!configuring!public! !
!Asserter categoriesFor: #initialize!initialization!public! !
!Asserter categoriesFor: #refuse:because:!configuring!public! !
!Asserter categoriesFor: #refuse:because:onSuccess:!configuring!public! !
!Asserter categoriesFor: #value:applying:!private! !
