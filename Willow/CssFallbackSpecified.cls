"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssFallbackSpecified
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssFallbackSpecified guid: (GUID fromString: '{bf3540ee-2bf1-46d7-8402-7ca39d3de8db}')!
CssFallbackSpecified comment: 'A CssFallbackSpecified specifies that a fallback for a CSS function is provided'!
!CssFallbackSpecified categoriesForClass!RenoirSt-Core-Units! !
!CssFallbackSpecified methodsFor!

cssContentOn: aWriteStream		aWriteStream		nextPut: $,;		space.	value cssContentOn: aWriteStream!

initializeWithValue: aCssValue	value := aCssValue! !
!CssFallbackSpecified categoriesFor: #cssContentOn:!Printing!public! !
!CssFallbackSpecified categoriesFor: #initializeWithValue:!initialize / release!public! !

!CssFallbackSpecified class methodsFor!

withValue: aCssValue	^self new initializeWithValue: aCssValue! !
!CssFallbackSpecified class categoriesFor: #withValue:!Instance Creation!public! !

