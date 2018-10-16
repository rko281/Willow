﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssSelector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssSelector guid: (GUID fromString: '{0e09b532-5245-48ec-80d2-a5d90dc50ed0}')!
CssSelector comment: 'In CSS, pattern matching rules determine which style rules apply to elements in the document tree. These patterns, called selectors, may range from simple element names to rich contextual patterns. If all conditions in the pattern are true for a certain element, the selector matches the element.
!CssSelector categoriesForClass!RenoirSt-Selectors! !
!CssSelector methodsFor!

* aSelector

, aSelector

/ aSelector

~ aSelector

+ aSelector

> aSelector

active

after

attribute: aString beginsWith: aValue

attribute: aString endsWith: aValue

attribute: aString includes:aValue

attribute: aString includesSubstring: aValue

before

checked

childAt: anIndex

childFromLastAt: anIndex

class: aClassName

descendantOfType: aType

disabled

empty

enabled

firstChild

firstLetter

firstLine

firstOfType

firstValueOfAttribute: aString beginsWith: aValue

focus

havingAttribute: aString 

hover

id: anIdentifier

isImplicitUniversal

lang: aLanguageId

lastChild

lastOfType

link

not: aCssSelector

onlyChild

onlyOfType

root

siblingOfTypeAt: anIndex

siblingOfTypeFromLastAt: anIndex

target

visited

withAttribute: aString equalTo: aValue
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
