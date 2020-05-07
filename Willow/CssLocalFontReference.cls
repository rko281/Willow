"Filed out from Dolphin Smalltalk 7"!

CssFontReference subclass: #CssLocalFontReference
	instanceVariableNames: 'fontName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssLocalFontReference guid: (GUID fromString: '{7a9cfee8-514e-4889-9a2f-121c02813b0c}')!
CssLocalFontReference comment: 'I represent a local font reference'!
!CssLocalFontReference categoriesForClass!RenoirSt-Core-Fonts! !
!CssLocalFontReference methodsFor!

cssContentOn: aStream	aStream nextPutAll: 'local('.	fontName cssContentOn: aStream.	aStream nextPutAll: ')'!

initializeToFontNamed: aFontName	fontName := aFontName ! !
!CssLocalFontReference categoriesFor: #cssContentOn:!Printing!public! !
!CssLocalFontReference categoriesFor: #initializeToFontNamed:!initialize/release!public! !

!CssLocalFontReference class methodsFor!

toFontNamed: aFontName	^self new initializeToFontNamed: aFontName ! !
!CssLocalFontReference class categoriesFor: #toFontNamed:!Instance Creation!public! !

