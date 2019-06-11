﻿"Filed out from Dolphin Smalltalk 7"!

Condition subclass: #RegexCondition
	instanceVariableNames: 'pattern'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RegexCondition guid: (GUID fromString: '{412c7fe6-f1dc-4dce-8d5d-1e11da179b7e}')!
RegexCondition comment: 'I''m a Condition.
!RegexCondition categoriesForClass!Buoy-Conditions! !
!RegexCondition methodsFor!

initializeMatching: aPattern

isSatisfiedBy: aString
!RegexCondition categoriesFor: #initializeMatching:!initialization!public! !
!RegexCondition categoriesFor: #isSatisfiedBy:!public!testing! !

!RegexCondition class methodsFor!

matching: aPattern
!RegexCondition class categoriesFor: #matching:!instance creation!public! !
