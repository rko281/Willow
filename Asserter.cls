"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Asserter
	instanceVariableNames: 'checks'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Asserter guid: (GUID fromString: '{54e81e81-6a57-4daa-b40b-00df063d9e5f}')!
Asserter comment: 'I''m a helper for Assertion Checker. Not intended to be used directly.'!
!Asserter categoriesForClass!Buoy-Assertions! !
!Asserter methodsFor!

asReverseFact: aFact	^ [ aFact value not ]!

checkApplying: aPolicy	checks do: [ :check | check checkApplying: aPolicy ]!

enforce: aFact because: aStringOrBlock	checks add: (AssertionCheck checking: aFact onFailure: aStringOrBlock)!

enforce: aFact because: anExplanationStringOrBlock onSuccess: aSuccessAction	checks add: (AssertionCheck checking: aFact onSuccess: [ :policy | self value: aSuccessAction applying: policy ] onFailure: anExplanationStringOrBlock)!

initialize	super initialize.	checks := OrderedCollection new!

refuse: aFact because: aStringOrBlock	self enforce: (self asReverseFact: aFact) because: aStringOrBlock!

refuse: aFact because: anExplanationStringOrBlock onSuccess: aSuccessAction	self enforce: (self asReverseFact: aFact) because: anExplanationStringOrBlock onSuccess: aSuccessAction!

value: aSuccessAction applying: policy	| asserter |	asserter := self class new.	aSuccessAction value: asserter.	asserter checkApplying: policy! !
!Asserter categoriesFor: #asReverseFact:!private! !
!Asserter categoriesFor: #checkApplying:!Checking!public! !
!Asserter categoriesFor: #enforce:because:!configuring!public! !
!Asserter categoriesFor: #enforce:because:onSuccess:!configuring!public! !
!Asserter categoriesFor: #initialize!initialization!public! !
!Asserter categoriesFor: #refuse:because:!configuring!public! !
!Asserter categoriesFor: #refuse:because:onSuccess:!configuring!public! !
!Asserter categoriesFor: #value:applying:!private! !

