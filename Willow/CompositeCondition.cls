"Filed out from Dolphin Smalltalk 7"!

Condition subclass: #CompositeCondition
	instanceVariableNames: 'conditions compositionPolicy'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeCondition guid: (GUID fromString: '{65839f9a-65c3-4efa-9715-3b25e279d3e1}')!
CompositeCondition comment: 'I''m a Condition.I''m a CompositeConditionI test that the conditions involved are satisfied, either all or any depending on how I was created.Example:CompositeCondition	satisfying: (ArithmeticCondition toBeGreaterOrEqualThan: 0)	and: (ArithmeticCondition toBeLessOrEqualThan: 2).'!
!CompositeCondition categoriesForClass!Buoy-Conditions! !
!CompositeCondition methodsFor!

initializeToSastifyAll: aConditionCollection using: aCompositionPolicy	compositionPolicy := aCompositionPolicy.	conditions := aConditionCollection!

isSatisfiedBy: aValue	^ conditions perform: compositionPolicy with: [ :condition | condition isSatisfiedBy: aValue ]! !
!CompositeCondition categoriesFor: #initializeToSastifyAll:using:!initialize/release!public! !
!CompositeCondition categoriesFor: #isSatisfiedBy:!public!testing! !

!CompositeCondition class methodsFor!

satisfying: aCondition and: anotherCondition	^ self satisfyingAll: (Array with: aCondition with: anotherCondition)!

satisfying: aCondition or: anotherCondition	^ self satisfyingAnyOf: (Array with: aCondition with: anotherCondition)!

satisfyingAll: aConditionCollection	^ self toSatisfyAll: aConditionCollection using: #allSatisfy:!

satisfyingAnyOf: aConditionCollection	^ self toSatisfyAll: aConditionCollection using: #anySatisfy:!

toSatisfyAll: aConditionCollection using: aCompositionPolicy	^ self new		initializeToSastifyAll: aConditionCollection		using: aCompositionPolicy! !
!CompositeCondition class categoriesFor: #satisfying:and:!instance creation!public! !
!CompositeCondition class categoriesFor: #satisfying:or:!instance creation!public! !
!CompositeCondition class categoriesFor: #satisfyingAll:!instance creation!public! !
!CompositeCondition class categoriesFor: #satisfyingAnyOf:!instance creation!public! !
!CompositeCondition class categoriesFor: #toSatisfyAll:using:!private/instance creation!public! !

