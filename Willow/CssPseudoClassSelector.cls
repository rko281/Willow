﻿"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssPseudoClassSelector
	instanceVariableNames: 'selector pseudoClassName arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssPseudoClassSelector guid: (GUID fromString: '{3722f7e4-9fe5-44ee-8706-0b58989eb860}')!
CssPseudoClassSelector comment: 'The pseudo-class concept is introduced to permit selection based on information that lies outside of the document tree or that cannot be expressed using the other simple selectors.
!CssPseudoClassSelector categoriesForClass!RenoirSt-Selectors! !
!CssPseudoClassSelector methodsFor!

cssContentOn: aStream

initializeNamed: aPseudoClassName withArguments: theArguments over: aSelector
!CssPseudoClassSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssPseudoClassSelector categoriesFor: #initializeNamed:withArguments:over:!initialize/release!public! !

!CssPseudoClassSelector class methodsFor!

activeOn: aSelector 

checkedOn: aSelector

childAt: aNamedConstantOrInteger on: aSelector

childFromLastAt: anInteger on: aSelector 

disabledOn: aSelector 

emptyOn: aSelector 

enabledOn: aSelector 

firstChildOn: aSelector 

firstOfTypeOn: aSelector 

focusOn: aSelector 

hoverOn: aSelector 

language: aLanguageId on: aSelector 

lastChildOn: aSelector 

lastOfTypeOn: aSelector 

linkOn: aSelector 

named: aPseudoClassName over: aSelector 

named: aPseudoClassName withArguments: theArguments over: aSelector 

not: aSelectorToNegate on: aBaseSelector 

onlyChildOn: aSelector 

onlyOfTypeOn: aSelector 

rootOn: aSelector 

siblingOfTypeAt: aNamedConstantOrInteger on: aSelector

siblingOfTypeFromLastAt: anInteger on: aSelector 

targetOn: aSelector 

visitedOn: aSelector 
!CssPseudoClassSelector class categoriesFor: #activeOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #checkedOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #childAt:on:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #childFromLastAt:on:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #disabledOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #emptyOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #enabledOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #firstChildOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #firstOfTypeOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #focusOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #hoverOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #language:on:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #lastChildOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #lastOfTypeOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #linkOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #named:over:!private! !
!CssPseudoClassSelector class categoriesFor: #named:withArguments:over:!private! !
!CssPseudoClassSelector class categoriesFor: #not:on:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #onlyChildOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #onlyOfTypeOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #rootOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #siblingOfTypeAt:on:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #siblingOfTypeFromLastAt:on:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #targetOn:!Instance Creation!public! !
!CssPseudoClassSelector class categoriesFor: #visitedOn:!Instance Creation!public! !
