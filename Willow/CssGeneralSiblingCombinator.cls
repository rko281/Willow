"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssGeneralSiblingCombinator
	instanceVariableNames: 'predecessor successor'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssGeneralSiblingCombinator guid: (GUID fromString: '{8ce184a6-b854-43b2-a0e0-8ca0f2f23358}')!
CssGeneralSiblingCombinator comment: 'The general sibling combinator is made of the "tilde" (U+007E, ~) character that separates two sequences of simple selectors. The elements represented by the two sequences share the same parent in the document tree and the element represented by the first sequence precedes (not necessarily immediately) the element represented by the second one.'!
!CssGeneralSiblingCombinator categoriesForClass!RenoirSt-Core-Selectors! !
!CssGeneralSiblingCombinator methodsFor!

cssContentOn: aStream		predecessor cssContentOn: aStream.	aStream		space;		nextPut: $~;		space.	successor cssContentOn: aStream!

initializeBetween: aPredecessorSelector and: aSuccessorSelector	predecessor := aPredecessorSelector.	successor := aSuccessorSelector ! !
!CssGeneralSiblingCombinator categoriesFor: #cssContentOn:!Printing!public! !
!CssGeneralSiblingCombinator categoriesFor: #initializeBetween:and:!initialize/release!public! !

!CssGeneralSiblingCombinator class methodsFor!

between: aPredecessorSelector and: aSuccessorSelector 		^self new initializeBetween: aPredecessorSelector and: aSuccessorSelector! !
!CssGeneralSiblingCombinator class categoriesFor: #between:and:!Instance Creation!public! !

