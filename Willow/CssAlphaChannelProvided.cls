"Filed out from Dolphin Smalltalk 7"!

CssAlphaChannel subclass: #CssAlphaChannelProvided
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAlphaChannelProvided guid: (GUID fromString: '{21a0e51b-7ae9-463b-bc84-a00ca8af5c4b}')!
CssAlphaChannelProvided comment: 'A CssAlphaChannelProvided represents the presence of an alpha channel value'!
!CssAlphaChannelProvided categoriesForClass!RenoirSt-Colors! !
!CssAlphaChannelProvided methodsFor!

componentsDo: aBlockClosure separatedBy: aSeparationBlock	aSeparationBlock value.	aBlockClosure value: value	!

functionNameFor: aString 		^'<1s>a' expandMacrosWith: aString !

initializeWithValue: aNumber 		value := aNumber ! !
!CssAlphaChannelProvided categoriesFor: #componentsDo:separatedBy:!Enumerating!public! !
!CssAlphaChannelProvided categoriesFor: #functionNameFor:!Accessing!public! !
!CssAlphaChannelProvided categoriesFor: #initializeWithValue:!initialize/release!public! !

!CssAlphaChannelProvided class methodsFor!

assertBetweenZeroAndOne: aNumber	AssertionChecker		enforce: [ aNumber between: 0 and: aNumber class one ]		because: [ 'The alpha value (<1s>) must be between zero and one.' expandMacrosWith: aNumber printString ]		raising: InstanceCreationFailed!

withValue: aNumber 		self assertBetweenZeroAndOne: aNumber.	^self new initializeWithValue: aNumber ! !
!CssAlphaChannelProvided class categoriesFor: #assertBetweenZeroAndOne:!private! !
!CssAlphaChannelProvided class categoriesFor: #withValue:!Instance Creation!public! !

