"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssChildCombinator
	instanceVariableNames: 'parent child'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssChildCombinator guid: (GUID fromString: '{00519a66-16b1-43aa-8c66-7efb5e415394}')!
CssChildCombinator comment: 'A child combinator describes a childhood relationship between two elements. A child combinator is made of the "greater-than sign" (U+003E, >) character and separates two sequences of simple selectors.'!
!CssChildCombinator categoriesForClass!RenoirSt-Selectors! !
!CssChildCombinator methodsFor!

cssContentOn: aStream	parent cssContentOn: aStream.	aStream		space;		nextPut: $>;		space.	child cssContentOn: aStream!

initializeBetween: aParentSelector and: aChildSelector 	parent  := aParentSelector.	child := aChildSelector ! !
!CssChildCombinator categoriesFor: #cssContentOn:!Printing!public! !
!CssChildCombinator categoriesFor: #initializeBetween:and:!initialize/release!public! !

!CssChildCombinator class methodsFor!

between: aParentSelector and: aChildSelector 		^self new initializeBetween: aParentSelector and: aChildSelector ! !
!CssChildCombinator class categoriesFor: #between:and:!Instance Creation!public! !

