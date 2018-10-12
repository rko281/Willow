"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssDescendantCombinator
	instanceVariableNames: 'ancestor descendant'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssDescendantCombinator guid: (GUID fromString: '{d4d62db8-4c8f-4841-84f7-3ca40ee51fb4}')!
CssDescendantCombinator comment: 'At times, authors may want selectors to describe an element that is the descendant of another element in the document tree (e.g., "an EM element that is contained within an H1 element"). Descendant combinators express such a relationship. A descendant combinator is whitespace that separates two sequences of simple selectors. A selector of the form "A B" represents an element B that is an arbitrary descendant of some ancestor element A.'!
!CssDescendantCombinator categoriesForClass!RenoirSt-Selectors! !
!CssDescendantCombinator methodsFor!

cssContentOn: aStream 		ancestor cssContentOn: aStream.	aStream space.	descendant cssContentOn: aStream !

initializeBetween: anAncestorSelector and: aDescendantSelector 		ancestor := anAncestorSelector .	descendant  := aDescendantSelector ! !
!CssDescendantCombinator categoriesFor: #cssContentOn:!Printing!public! !
!CssDescendantCombinator categoriesFor: #initializeBetween:and:!initialize/release!public! !

!CssDescendantCombinator class methodsFor!

between: anAncestorSelector and: aDescendantSelector	^ anAncestorSelector isImplicitUniversal		ifTrue: [ aDescendantSelector ]		ifFalse: [ self new initializeBetween: anAncestorSelector and: aDescendantSelector ]! !
!CssDescendantCombinator class categoriesFor: #between:and:!Instance Creation!public! !

