"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssClassSelector
	instanceVariableNames: 'cssClass parentSelector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssClassSelector guid: (GUID fromString: '{fa4e7456-7cbd-4a06-8893-cfb159abd1e7}')!
CssClassSelector comment: 'The class attribute assigns one or more class names to an element. The element may be said to belong to these classes. A class name may be shared by several element instances. The class attribute has several roles:- As a style sheet selector (when an author wishes to assign style information to a set of elements).- For general purpose processing by user agents.'!
!CssClassSelector categoriesForClass!RenoirSt-Core-Selectors! !
!CssClassSelector methodsFor!

cssContentOn: aStream		parentSelector cssContentOn: aStream.	aStream		nextPut: $.;		nextPutAll: cssClass!

initializeFor: aString over: aSelector		cssClass := aString.	parentSelector := aSelector! !
!CssClassSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssClassSelector categoriesFor: #initializeFor:over:!initialize/release!public! !

!CssClassSelector class methodsFor!

for: aStringOrSymbol over: aSelector 		^self new initializeFor: aStringOrSymbol asString over: aSelector ! !
!CssClassSelector class categoriesFor: #for:over:!instance creation!public! !

