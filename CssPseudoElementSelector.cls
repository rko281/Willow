"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssPseudoElementSelector
	instanceVariableNames: 'selector pseudoElementName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssPseudoElementSelector guid: (GUID fromString: '{adb85e9a-e654-4fbc-a504-9065404009e3}')!
CssPseudoElementSelector comment: 'Pseudo-elements create abstractions about the document tree beyond those specified by the document language. For instance, document languages do not offer mechanisms to access the first letter or first line of an element''s content. Pseudo-elements allow authors to refer to this otherwise inaccessible information. Pseudo-elements may also provide authors a way to refer to content that does not exist in the source document (e.g., the ::before and ::after pseudo-elements give access to generated content).A pseudo-element is made of two colons (::) followed by the name of the pseudo-element.'!
!CssPseudoElementSelector categoriesForClass!RenoirSt-Selectors! !
!CssPseudoElementSelector methodsFor!

cssContentOn: aStream 		selector cssContentOn: aStream.	aStream nextPutAll: '::'.	pseudoElementName cssContentOn: aStream!

initializeNamed: aString of: aSelector 		selector := aSelector.	pseudoElementName := aString! !
!CssPseudoElementSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssPseudoElementSelector categoriesFor: #initializeNamed:of:!initialize/release!public! !

!CssPseudoElementSelector class methodsFor!

after: aSelector 		^self named: 'after' of: aSelector !

before: aSelector 		^self named: 'before' of: aSelector !

firstLetterOf: aSelector 		^self named: 'first-letter' of: aSelector !

firstLineOf: aSelector 		 ^self named: 'first-line' of: aSelector !

named: aString of: aSelector 		^self new initializeNamed: aString of: aSelector! !
!CssPseudoElementSelector class categoriesFor: #after:!Instance Creation!public! !
!CssPseudoElementSelector class categoriesFor: #before:!Instance Creation!public! !
!CssPseudoElementSelector class categoriesFor: #firstLetterOf:!Instance Creation!public! !
!CssPseudoElementSelector class categoriesFor: #firstLineOf:!Instance Creation!public! !
!CssPseudoElementSelector class categoriesFor: #named:of:!private! !

