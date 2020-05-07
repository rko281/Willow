"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssSVGFontLocation
	instanceVariableNames: 'url id'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssSVGFontLocation guid: (GUID fromString: '{c67dc4ce-3c68-444b-9501-6b45e644bd15}')!
CssSVGFontLocation comment: 'I represent a location for a font inside an SVG file'!
!CssSVGFontLocation categoriesForClass!RenoirSt-Core-Fonts! !
!CssSVGFontLocation methodsFor!

cssContentOn: aStream	aStream		nextPutAll: ((String streamContents: [ :stream | url cssContentOn: stream ]) copyReplaceAll: '")' with: ('#<1s>")' expandMacrosWith: id))!

initializeAt: anUrl withId: aString 		url := anUrl.	id := aString ! !
!CssSVGFontLocation categoriesFor: #cssContentOn:!Printing!public! !
!CssSVGFontLocation categoriesFor: #initializeAt:withId:!initialize/release!public! !

!CssSVGFontLocation class methodsFor!

at: anUrl withId: aString 		^self new initializeAt: anUrl withId: aString ! !
!CssSVGFontLocation class categoriesFor: #at:withId:!Instance Creation!public! !

