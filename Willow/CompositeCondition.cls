﻿"Filed out from Dolphin Smalltalk 7"!

Condition subclass: #CompositeCondition
	instanceVariableNames: 'conditions compositionPolicy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeCondition guid: (GUID fromString: '{65839f9a-65c3-4efa-9715-3b25e279d3e1}')!
CompositeCondition comment: 'I''m a Condition.
!CompositeCondition categoriesForClass!Buoy-Conditions! !
!CompositeCondition methodsFor!

initializeToSastifyAll: aConditionCollection using: aCompositionPolicy

isSatisfiedBy: aValue
!CompositeCondition categoriesFor: #initializeToSastifyAll:using:!initialize/release!public! !
!CompositeCondition categoriesFor: #isSatisfiedBy:!public!testing! !

!CompositeCondition class methodsFor!

satisfying: aCondition and: anotherCondition

satisfying: aCondition or: anotherCondition

satisfyingAll: aConditionCollection

satisfyingAnyOf: aConditionCollection

toSatisfyAll: aConditionCollection using: aCompositionPolicy
!CompositeCondition class categoriesFor: #satisfying:and:!instance creation!public! !
!CompositeCondition class categoriesFor: #satisfying:or:!instance creation!public! !
!CompositeCondition class categoriesFor: #satisfyingAll:!instance creation!public! !
!CompositeCondition class categoriesFor: #satisfyingAnyOf:!instance creation!public! !
!CompositeCondition class categoriesFor: #toSatisfyAll:using:!private/instance creation!public! !
