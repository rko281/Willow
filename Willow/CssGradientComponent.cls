"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssGradientComponent
	instanceVariableNames: 'direction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssGradientComponent guid: (GUID fromString: '{3cfabc13-6e77-4ae9-bb99-6da1df2dcdf1}')!
CssGradientComponent comment: 'A CssGradientComponent represents a part of a gradient'!
!CssGradientComponent categoriesForClass!RenoirSt-Core-Colors! !
!CssGradientComponent methodsFor!

cssContentOn: aWriteStream		direction cssContentOn: aWriteStream.	aWriteStream		nextPut: $,;		space!

initializeOn: aCssValue	direction := aCssValue ! !
!CssGradientComponent categoriesFor: #cssContentOn:!Printing!public! !
!CssGradientComponent categoriesFor: #initializeOn:!initialize/release!public! !

!CssGradientComponent class methodsFor!

on: aCssValue	^self new initializeOn: aCssValue ! !
!CssGradientComponent class categoriesFor: #on:!Instance Creation!public! !

