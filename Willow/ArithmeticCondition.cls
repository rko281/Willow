﻿"Filed out from Dolphin Smalltalk 7"!

Condition subclass: #ArithmeticCondition
	instanceVariableNames: 'value arithmeticOperator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ArithmeticCondition guid: (GUID fromString: '{e94fdb97-606a-4f3f-ae53-af45e38c527f}')!
ArithmeticCondition comment: 'I''m a Condition.
!ArithmeticCondition categoriesForClass!Buoy-Conditions! !
!ArithmeticCondition methodsFor!

initializeComparingAgainst: aValue using: anArithmeticOperator

isSatisfiedBy: aValue
!ArithmeticCondition categoriesFor: #initializeComparingAgainst:using:!initialize/release!public! !
!ArithmeticCondition categoriesFor: #isSatisfiedBy:!public!testing! !

!ArithmeticCondition class methodsFor!

comparingAgainst: aValue using: anArithmeticOperator

toBeDifferentTo: aValue

toBeEqualTo: aValue

toBeGreaterOrEqualThan: aValue

toBeGreaterThan: aValue

toBeLessOrEqualThan: aValue

toBeLessThan: aValue
!ArithmeticCondition class categoriesFor: #comparingAgainst:using:!private/instance creation!public! !
!ArithmeticCondition class categoriesFor: #toBeDifferentTo:!instance creation!public! !
!ArithmeticCondition class categoriesFor: #toBeEqualTo:!instance creation!public! !
!ArithmeticCondition class categoriesFor: #toBeGreaterOrEqualThan:!instance creation!public! !
!ArithmeticCondition class categoriesFor: #toBeGreaterThan:!instance creation!public! !
!ArithmeticCondition class categoriesFor: #toBeLessOrEqualThan:!instance creation!public! !
!ArithmeticCondition class categoriesFor: #toBeLessThan:!instance creation!public! !
