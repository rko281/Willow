"Filed out from Dolphin Smalltalk 7"!

Condition subclass: #RegexCondition
	instanceVariableNames: 'pattern'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RegexCondition guid: (GUID fromString: '{412c7fe6-f1dc-4dce-8d5d-1e11da179b7e}')!
RegexCondition comment: 'I''m a Condition.I''m a RegexConditionI test a regex pattern against a provided string.Example:RegexCondition matching: ''I...''For more examples, besides the provided test, check Regular expressions framework documentation on Pharo help.'!
!RegexCondition categoriesForClass!Buoy-Conditions! !
!RegexCondition methodsFor!

initializeMatching: aPattern	pattern := aPattern asRegex!

isSatisfiedBy: aString	^ pattern matches: aString! !
!RegexCondition categoriesFor: #initializeMatching:!initialization!public! !
!RegexCondition categoriesFor: #isSatisfiedBy:!public!testing! !

!RegexCondition class methodsFor!

matching: aPattern	^ self new initializeMatching: aPattern! !
!RegexCondition class categoriesFor: #matching:!instance creation!public! !

