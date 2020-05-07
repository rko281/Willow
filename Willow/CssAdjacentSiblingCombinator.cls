"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssAdjacentSiblingCombinator
	instanceVariableNames: 'predecessor successor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAdjacentSiblingCombinator guid: (GUID fromString: '{d0f1446c-ad54-4af6-9b0e-28206b4f6e71}')!
CssAdjacentSiblingCombinator comment: 'The adjacent sibling combinator is made of the "plus sign" (U+002B, +) character that separates two sequences of simple selectors. The elements represented by the two sequences share the same parent in the document tree and the element represented by the first sequence immediately precedes the element represented by the second one.'!
!CssAdjacentSiblingCombinator categoriesForClass!RenoirSt-Core-Selectors! !
!CssAdjacentSiblingCombinator methodsFor!

cssContentOn: aStream		predecessor cssContentOn: aStream.	aStream		space;		nextPut: $+;		space.	successor cssContentOn: aStream!

initializeBetween: aPredecessorSelector and: aSuccessorSelector 	predecessor := aPredecessorSelector.	successor := aSuccessorSelector ! !
!CssAdjacentSiblingCombinator categoriesFor: #cssContentOn:!Printing!public! !
!CssAdjacentSiblingCombinator categoriesFor: #initializeBetween:and:!initialize/release!public! !

!CssAdjacentSiblingCombinator class methodsFor!

between: aPredecessorSelector and: aSuccessorSelector 		^self new initializeBetween: aPredecessorSelector and: aSuccessorSelector ! !
!CssAdjacentSiblingCombinator class categoriesFor: #between:and:!Instance Creation!public! !

