"Filed out from Dolphin Smalltalk 7"!

Condition subclass: #NegatedCondition
	instanceVariableNames: 'condition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NegatedCondition guid: (GUID fromString: '{58790f79-ae42-4d88-a56c-1bc555c838f7}')!
NegatedCondition comment: 'I''m a Condition.I''m a NegatedConditionI test the opposite of the condition I was created with.Example:(ArithmeticCondition toBeEqualTo: 1) negated.Behaves like:(ArithmeticCondition toBeDifferentTo: 1)'!
!NegatedCondition categoriesForClass!Buoy-Conditions! !
!NegatedCondition methodsFor!

initializeWith: aCondition	condition := aCondition!

isSatisfiedBy: aValue		^ (condition isSatisfiedBy: aValue) not! !
!NegatedCondition categoriesFor: #initializeWith:!initialize/release!public! !
!NegatedCondition categoriesFor: #isSatisfiedBy:!public!testing! !

!NegatedCondition class methodsFor!

with: aCondition	^ self new initializeWith: aCondition ! !
!NegatedCondition class categoriesFor: #with:!instance creation!public! !

