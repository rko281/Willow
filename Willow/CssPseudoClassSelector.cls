"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssPseudoClassSelector
	instanceVariableNames: 'selector pseudoClassName arguments'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssPseudoClassSelector guid: (GUID fromString: '{3722f7e4-9fe5-44ee-8706-0b58989eb860}')!
CssPseudoClassSelector comment: 'The pseudo-class concept is introduced to permit selection based on information that lies outside of the document tree or that cannot be expressed using the other simple selectors.A pseudo-class always consists of a "colon" (:) followed by the name of the pseudo-class and optionally by a value between parentheses.Pseudo-classes are allowed in all sequences of simple selectors contained in a selector. Pseudo-classes are allowed anywhere in sequences of simple selectors, after the leading type selector or universal selector (possibly omitted). Pseudo-class names are case-insensitive. Some pseudo-classes are mutually exclusive, while others can be applied simultaneously to the same element. Pseudo-classes may be dynamic, in the sense that an element may acquire or lose a pseudo-class while a user interacts with the document.'!
!CssPseudoClassSelector categoriesForClass!RenoirSt-Core-Selectors! !
!CssPseudoClassSelector methodsFor!

cssContentOn: aStream	selector cssContentOn: aStream.	aStream		nextPut: $:;		nextPutAll: pseudoClassName.	arguments		do: [ :argument | 			aStream nextPut: $(.			argument cssContentOn: aStream.			aStream nextPut: $) ]!

initializeNamed: aPseudoClassName withArguments: theArguments over: aSelector		pseudoClassName := aPseudoClassName.	arguments := theArguments.	selector := aSelector! !
!CssPseudoClassSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssPseudoClassSelector categoriesFor: #initializeNamed:withArguments:over:!initialize/release!public! !

!CssPseudoClassSelector class methodsFor!

activeOn: aSelector 		^self named: 'active' over: aSelector !

checkedOn: aSelector		^self named: 'checked' over: aSelector !

childAt: aNamedConstantOrInteger on: aSelector	^ self named: 'nth-child' withArguments: {(self lookupValue: aNamedConstantOrInteger)} over: aSelector!

childFromLastAt: anInteger on: aSelector 		^self named: 'nth-last-child' withArguments: { anInteger } over: aSelector !

disabledOn: aSelector 		^self named: 'disabled' over: aSelector !

emptyOn: aSelector 		^self named: 'empty' over: aSelector !

enabledOn: aSelector 		^self named: 'enabled' over: aSelector !

firstChildOn: aSelector 		^self named: 'first-child' over: aSelector !

firstOfTypeOn: aSelector 		^self named: 'first-of-type' over: aSelector !

focusOn: aSelector 		^self named: 'focus' over: aSelector !

hoverOn: aSelector 		^self named: 'hover' over: aSelector !

language: aLanguageId on: aSelector 		^self named: 'lang' withArguments: { aLanguageId } over: aSelector !

lastChildOn: aSelector 		^self named: 'last-child' over: aSelector !

lastOfTypeOn: aSelector 		^self named: 'last-of-type' over: aSelector !

linkOn: aSelector 		^self named: 'link' over: aSelector !

named: aPseudoClassName over: aSelector 		^self named: aPseudoClassName withArguments: #() over: aSelector !

named: aPseudoClassName withArguments: theArguments over: aSelector 		^self new initializeNamed: aPseudoClassName withArguments: theArguments over: aSelector !

not: aSelectorToNegate on: aBaseSelector 		 ^self named: 'not' withArguments: { aSelectorToNegate } over: aBaseSelector !

onlyChildOn: aSelector 		^self named: 'only-child' over: aSelector !

onlyOfTypeOn: aSelector 		^self named: 'only-of-type' over: aSelector !

rootOn: aSelector 		^self named: 'root' over: aSelector !

siblingOfTypeAt: aNamedConstantOrInteger on: aSelector	^ self named: 'nth-of-type' withArguments: {(self lookupValue: aNamedConstantOrInteger)} over: aSelector!

siblingOfTypeFromLastAt: anInteger on: aSelector 		^self named: 'nth-last-of-type' withArguments: { anInteger } over: aSelector!

targetOn: aSelector 		^self named: 'target' over: aSelector !

visitedOn: aSelector 		^self named: 'visited' over: aSelector ! !
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

