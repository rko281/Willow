﻿"Filed out from Dolphin Smalltalk 7"!

Condition subclass: #NegatedCondition
	instanceVariableNames: 'condition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NegatedCondition guid: (GUID fromString: '{58790f79-ae42-4d88-a56c-1bc555c838f7}')!
NegatedCondition comment: 'I''m a Condition.
!NegatedCondition categoriesForClass!Buoy-Conditions! !
!NegatedCondition methodsFor!

initializeWith: aCondition

isSatisfiedBy: aValue
!NegatedCondition categoriesFor: #initializeWith:!initialize/release!public! !
!NegatedCondition categoriesFor: #isSatisfiedBy:!public!testing! !

!NegatedCondition class methodsFor!

with: aCondition
!NegatedCondition class categoriesFor: #with:!instance creation!public! !
