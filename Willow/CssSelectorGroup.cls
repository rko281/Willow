﻿"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssSelectorGroup
	instanceVariableNames: 'selectors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssSelectorGroup guid: (GUID fromString: '{236bd3aa-8bb3-4027-9040-be12bb1e7baa}')!
CssSelectorGroup comment: 'A comma-separated list of selectors represents the union of all elements selected by each of the individual selectors in the list. (A comma is U+002C.) For example, in CSS when several selectors share the same declarations, they may be grouped into a comma-separated list. White space may appear before and/or after the comma.
!CssSelectorGroup categoriesForClass!RenoirSt-Selectors! !
!CssSelectorGroup methodsFor!

, aSelector

cssContentOn: aStream

initializeWithAll: aCollection 
!CssSelectorGroup categoriesFor: #,!building/combinators!public! !
!CssSelectorGroup categoriesFor: #cssContentOn:!Printing!public! !
!CssSelectorGroup categoriesFor: #initializeWithAll:!initialize/release!public! !

!CssSelectorGroup class methodsFor!

with: aSelector with: anotherSelector
!CssSelectorGroup class categoriesFor: #with:with:!Instance Creation!public! !
