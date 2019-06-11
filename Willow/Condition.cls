"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Condition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Condition guid: (GUID fromString: '{e9ef2d63-f5dc-44a9-a2a5-a2e49556a007}')!
Condition comment: 'I''m a Condition.I''m an abstract class.I test if a provided value is valid against me.'!
!Condition categoriesForClass!Buoy-Conditions! !
!Condition methodsFor!

and: aCondition	^ CompositeCondition satisfying: self and: aCondition!

isSatisfiedBy: aValue		self subclassResponsibility !

negated		^ NegatedCondition with: self.!

or: aCondition	^ CompositeCondition satisfying: self or: aCondition! !
!Condition categoriesFor: #and:!composing!public! !
!Condition categoriesFor: #isSatisfiedBy:!public!testing! !
!Condition categoriesFor: #negated!negating!public! !
!Condition categoriesFor: #or:!composing!public! !

