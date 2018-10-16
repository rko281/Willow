﻿"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssClassSelector
	instanceVariableNames: 'cssClass parentSelector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssClassSelector guid: (GUID fromString: '{3e51da3b-5f4b-456c-8e5a-c53685410158}')!
CssClassSelector comment: 'The class attribute assigns one or more class names to an element. The element may be said to belong to these classes. A class name may be shared by several element instances. The class attribute has several roles:
!CssClassSelector categoriesForClass!RenoirSt-Selectors! !
!CssClassSelector methodsFor!

cssContentOn: aStream

initializeFor: aString over: aSelector
!CssClassSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssClassSelector categoriesFor: #initializeFor:over:!initialize/release!public! !

!CssClassSelector class methodsFor!

for: aStringOrSymbol over: aSelector 
!CssClassSelector class categoriesFor: #for:over:!instance creation!public! !
