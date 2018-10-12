"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssTypeSelector
	instanceVariableNames: 'elementType'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssTypeSelector guid: (GUID fromString: '{e5e4da62-4842-4c1d-969b-762bcd327d07}')!
CssTypeSelector comment: 'A type selector is the name of a document language element type written using the syntax of CSS qualified names. A type selector represents an instance of the element type in the document tree.'!
!CssTypeSelector categoriesForClass!RenoirSt-Selectors! !
!CssTypeSelector methodsFor!

cssContentOn: aStream	aStream nextPutAll: elementType !

initializeOfType: aString		elementType  := aString. ! !
!CssTypeSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssTypeSelector categoriesFor: #initializeOfType:!initialize/release!public! !

!CssTypeSelector class methodsFor!

ofType: aString	^ self new initializeOfType: aString ! !
!CssTypeSelector class categoriesFor: #ofType:!Instance Creation!public! !

