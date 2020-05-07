"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssDescendantCombinator
	instanceVariableNames: 'ancestor descendant'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssDescendantCombinator guid: (GUID fromString: '{dcf1af8a-a8d8-49e7-a104-6244cf98cfc9}')!
CssDescendantCombinator comment: 'At times, authors may want selectors to describe an element that is the descendant of another element in the document tree (e.g., "an EM element that is contained within an H1 element"). Descendant combinators express such a relationship. A descendant combinator is whitespace that separates two sequences of simple selectors. A selector of the form "A B" represents an element B that is an arbitrary descendant of some ancestor element A.'!
!CssDescendantCombinator categoriesForClass!RenoirSt-Core-Selectors! !
!CssDescendantCombinator methodsFor!

cssContentOn: aStream 		ancestor cssContentOn: aStream.	aStream space.	descendant cssContentOn: aStream !

initializeBetween: anAncestorSelector and: aDescendantSelector 		ancestor := anAncestorSelector .	descendant  := aDescendantSelector ! !
!CssDescendantCombinator categoriesFor: #cssContentOn:!Printing!public! !
!CssDescendantCombinator categoriesFor: #initializeBetween:and:!initialize/release!public! !

!CssDescendantCombinator class methodsFor!

between: anAncestorSelector and: aDescendantSelector	^ [ self new initializeBetween: anAncestorSelector and: aDescendantSelector ]		unless: anAncestorSelector isImplicitUniversal		inWhichCase: [ aDescendantSelector ]! !
!CssDescendantCombinator class categoriesFor: #between:and:!Instance Creation!public! !

