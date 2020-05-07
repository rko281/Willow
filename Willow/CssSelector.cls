"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssSelector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssSelector guid: (GUID fromString: '{0e09b532-5245-48ec-80d2-a5d90dc50ed0}')!
CssSelector comment: 'In CSS, pattern matching rules determine which style rules apply to elements in the document tree. These patterns, called selectors, may range from simple element names to rich contextual patterns. If all conditions in the pattern are true for a certain element, the selector matches the element.'!
!CssSelector categoriesForClass!RenoirSt-Core-Selectors! !
!CssSelector methodsFor!

* aSelector	| ancestor |	ancestor := CssDescendantCombinator between: self and: CssUniversalSelector explicit.	^CssDescendantCombinator between: ancestor and: aSelector !

, aSelector	^CssSelectorGroup with: self with: aSelector !

/ aSelector	"This shortcut cover the cases when we cannot use the space to create the descendant combinator.	For example if the right part of the selector needs parens."	^ CssDescendantCombinator between: self and: aSelector!

~ aSelector	^CssGeneralSiblingCombinator between: self and: aSelector !

+ aSelector	^CssAdjacentSiblingCombinator between: self and: aSelector !

> aSelector	^CssChildCombinator between: self and: aSelector !

active	^ CssPseudoClassSelector activeOn: self!

after	^CssPseudoElementSelector after: self!

attribute: aString beginsWith: aValue	^ CssAttributeSelector attribute: aString of: self beginsWith: aValue!

attribute: aString endsWith: aValue	^ CssAttributeSelector attribute: aString of: self endsWith: aValue!

attribute: aString includes:aValue	^ CssAttributeSelector attribute: aString of: self includes: aValue!

attribute: aString includesSubstring: aValue	^ CssAttributeSelector attribute: aString of: self includesSubstring: aValue!

before	^CssPseudoElementSelector before: self!

checked	^ CssPseudoClassSelector checkedOn: self!

childAt: anIndex	^ CssPseudoClassSelector childAt: anIndex on: self!

childFromLastAt: anIndex	^ CssPseudoClassSelector childFromLastAt: anIndex on: self!

class: aClassName	^CssClassSelector for: aClassName over: self!

descendantOfType: aType	^ CssDescendantCombinator between: self and: (CssTypeSelector ofType: aType)!

disabled	^ CssPseudoClassSelector disabledOn:  self!

empty	^ CssPseudoClassSelector emptyOn: self!

enabled	^ CssPseudoClassSelector enabledOn:  self!

firstChild	^ CssPseudoClassSelector firstChildOn: self!

firstLetter	^CssPseudoElementSelector firstLetterOf: self!

firstLine	^CssPseudoElementSelector firstLineOf: self!

firstOfType	^ CssPseudoClassSelector firstOfTypeOn: self!

firstValueOfAttribute: aString beginsWith: aValue	^ CssAttributeSelector firstValueOfAttribute: aString of: self beginsWith: aValue!

focus	^ CssPseudoClassSelector focusOn: self!

havingAttribute: aString 	 	^CssAttributeSelector having: self theAttribute: aString !

hover	^ CssPseudoClassSelector hoverOn: self!

id: anIdentifier	^CssIdSelector for: anIdentifier over: self!

isImplicitUniversal	^false!

lang: aLanguageId	^ CssPseudoClassSelector language: aLanguageId on: self!

lastChild	^ CssPseudoClassSelector lastChildOn: self!

lastOfType	^ CssPseudoClassSelector lastOfTypeOn: self!

link	^ CssPseudoClassSelector linkOn: self!

not: aCssSelector	^ CssPseudoClassSelector not: aCssSelector on: self!

onlyChild	^ CssPseudoClassSelector onlyChildOn: self!

onlyOfType	^ CssPseudoClassSelector onlyOfTypeOn: self!

root	^ CssPseudoClassSelector rootOn:  self!

siblingOfTypeAt: anIndex	^ CssPseudoClassSelector siblingOfTypeAt:  anIndex on: self!

siblingOfTypeFromLastAt: anIndex	^ CssPseudoClassSelector siblingOfTypeFromLastAt:  anIndex on: self!

target	^ CssPseudoClassSelector targetOn: self!

visited	^ CssPseudoClassSelector visitedOn: self!

withAttribute: aString equalTo: aValue	^ CssAttributeSelector isAttribute: aString of: self equalTo: aValue! !
!CssSelector categoriesFor: #*!building/combinators!public! !
!CssSelector categoriesFor: #,!building/combinators!public! !
!CssSelector categoriesFor: #/!building/combinators!public! !
!CssSelector categoriesFor: #~!building/combinators!public! !
!CssSelector categoriesFor: #+!building/combinators!public! !
!CssSelector categoriesFor: #>!building/combinators!public! !
!CssSelector categoriesFor: #active!building/pseudo classes!public! !
!CssSelector categoriesFor: #after!building/pseudo elements!public! !
!CssSelector categoriesFor: #attribute:beginsWith:!building!public! !
!CssSelector categoriesFor: #attribute:endsWith:!building!public! !
!CssSelector categoriesFor: #attribute:includes:!building!public! !
!CssSelector categoriesFor: #attribute:includesSubstring:!building!public! !
!CssSelector categoriesFor: #before!building/pseudo elements!public! !
!CssSelector categoriesFor: #checked!building/pseudo classes!public! !
!CssSelector categoriesFor: #childAt:!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #childFromLastAt:!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #class:!building!public! !
!CssSelector categoriesFor: #descendantOfType:!private! !
!CssSelector categoriesFor: #disabled!building/pseudo classes!public! !
!CssSelector categoriesFor: #empty!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #enabled!building/pseudo classes!public! !
!CssSelector categoriesFor: #firstChild!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #firstLetter!building/pseudo elements!public! !
!CssSelector categoriesFor: #firstLine!building/pseudo elements!public! !
!CssSelector categoriesFor: #firstOfType!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #firstValueOfAttribute:beginsWith:!building!public! !
!CssSelector categoriesFor: #focus!building/pseudo classes!public! !
!CssSelector categoriesFor: #havingAttribute:!building!public! !
!CssSelector categoriesFor: #hover!building/pseudo classes!public! !
!CssSelector categoriesFor: #id:!building!public! !
!CssSelector categoriesFor: #isImplicitUniversal!public!testing! !
!CssSelector categoriesFor: #lang:!building/pseudo classes!public! !
!CssSelector categoriesFor: #lastChild!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #lastOfType!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #link!building/pseudo classes!public! !
!CssSelector categoriesFor: #not:!building/pseudo classes!public! !
!CssSelector categoriesFor: #onlyChild!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #onlyOfType!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #root!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #siblingOfTypeAt:!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #siblingOfTypeFromLastAt:!building/structural pseudo classes!public! !
!CssSelector categoriesFor: #target!building/pseudo classes!public! !
!CssSelector categoriesFor: #visited!building/pseudo classes!public! !
!CssSelector categoriesFor: #withAttribute:equalTo:!building!public! !

