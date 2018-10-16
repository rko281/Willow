﻿"Filed out from Dolphin Smalltalk 7"!

CssColorUnit subclass: #CssIdentifiedColor
	instanceVariableNames: 'color identification'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssIdentifiedColor guid: (GUID fromString: '{d82b2a3a-6440-4c89-98b6-607070fd1608}')!
CssIdentifiedColor comment: 'A CssIdentifiedColor is a color with a given identification (a name or hexadecimal representation).
!CssIdentifiedColor categoriesForClass!RenoirSt-Colors! !
!CssIdentifiedColor methodsFor!

color

cssContentOn: aWriteStream 

identifiedBy: aString

initializeRepresenting: aCssColor identifiedBy: aString 

newWithAlpha: alphaValue
!CssIdentifiedColor categoriesFor: #color!Accessing!public! !
!CssIdentifiedColor categoriesFor: #cssContentOn:!Printing!public! !
!CssIdentifiedColor categoriesFor: #identifiedBy:!Converting!public! !
!CssIdentifiedColor categoriesFor: #initializeRepresenting:identifiedBy:!initialize/release!public! !
!CssIdentifiedColor categoriesFor: #newWithAlpha:!Converting!public! !

!CssIdentifiedColor class methodsFor!

assertIsOfSizeSix: aString

expandToExtendedHexaNotation: aString

fromHexadecimalNotation: aString

representing: aCssColor identifiedBy: aString 
!CssIdentifiedColor class categoriesFor: #assertIsOfSizeSix:!private! !
!CssIdentifiedColor class categoriesFor: #expandToExtendedHexaNotation:!private! !
!CssIdentifiedColor class categoriesFor: #fromHexadecimalNotation:!Instance Creation!public! !
!CssIdentifiedColor class categoriesFor: #representing:identifiedBy:!Instance Creation!public! !
