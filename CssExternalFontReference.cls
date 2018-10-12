"Filed out from Dolphin Smalltalk 7"!

CssFontReference subclass: #CssExternalFontReference
	instanceVariableNames: 'url format'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssExternalFontReference guid: (GUID fromString: '{7d224ca6-a9bc-4f8e-8c7b-5be33bcaf8c1}')!
CssExternalFontReference comment: 'I represent an external font reference'!
!CssExternalFontReference categoriesForClass!RenoirSt-Fonts! !
!CssExternalFontReference methodsFor!

cssContentOn: aStream	url cssContentOn: aStream.	format notEmpty		ifTrue: [ aStream				space;				nextPutAll: 'format(';				nextPut: $".			format cssContentOn: aStream.			aStream				nextPut: $";				nextPut: $) ]!

initializeLocatedAt: anUrl withFormat: aString 	url := anUrl.	format := aString ! !
!CssExternalFontReference categoriesFor: #cssContentOn:!Printing!public! !
!CssExternalFontReference categoriesFor: #initializeLocatedAt:withFormat:!initialize/release!public! !

!CssExternalFontReference class methodsFor!

locatedAt: anUrl 		^self locatedAt: anUrl withFormat: ''!

locatedAt: anUrl withFormat: aNamedConstantOrFontFormatString	^ self new initializeLocatedAt: anUrl withFormat: (self lookupValue: aNamedConstantOrFontFormatString)!

svgFontLocatedAt: aUrl withId: aString	^ self locatedAt: (CssSVGFontLocation at: aUrl withId: aString) withFormat: #svg! !
!CssExternalFontReference class categoriesFor: #locatedAt:!Instance Creation!public! !
!CssExternalFontReference class categoriesFor: #locatedAt:withFormat:!Instance Creation!public! !
!CssExternalFontReference class categoriesFor: #svgFontLocatedAt:withId:!Instance Creation!public! !

