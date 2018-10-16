﻿"Filed out from Dolphin Smalltalk 7"!

CssFontReference subclass: #CssExternalFontReference
	instanceVariableNames: 'url format'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssExternalFontReference guid: (GUID fromString: '{7d224ca6-a9bc-4f8e-8c7b-5be33bcaf8c1}')!
CssExternalFontReference comment: 'I represent an external font reference'!
!CssExternalFontReference categoriesForClass!RenoirSt-Fonts! !
!CssExternalFontReference methodsFor!

cssContentOn: aStream

initializeLocatedAt: anUrl withFormat: aString 
!CssExternalFontReference categoriesFor: #cssContentOn:!Printing!public! !
!CssExternalFontReference categoriesFor: #initializeLocatedAt:withFormat:!initialize/release!public! !

!CssExternalFontReference class methodsFor!

locatedAt: anUrl 

locatedAt: anUrl withFormat: aNamedConstantOrFontFormatString

svgFontLocatedAt: aUrl withId: aString
!CssExternalFontReference class categoriesFor: #locatedAt:!Instance Creation!public! !
!CssExternalFontReference class categoriesFor: #locatedAt:withFormat:!Instance Creation!public! !
!CssExternalFontReference class categoriesFor: #svgFontLocatedAt:withId:!Instance Creation!public! !
