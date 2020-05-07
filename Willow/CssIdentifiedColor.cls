"Filed out from Dolphin Smalltalk 7"!

CssColorUnit subclass: #CssIdentifiedColor
	instanceVariableNames: 'color identification'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssIdentifiedColor guid: (GUID fromString: '{07912790-fb50-49f3-a8af-315a2a0e08d8}')!
CssIdentifiedColor comment: 'A CssIdentifiedColor is a color with a given identification (a name or hexadecimal representation).'!
!CssIdentifiedColor categoriesForClass!RenoirSt-Core-Colors! !
!CssIdentifiedColor methodsFor!

color	^ color!

cssContentOn: aWriteStream 		identification cssContentOn: aWriteStream !

identifiedBy: aString	^self class representing: color identifiedBy: aString !

initializeRepresenting: aCssColor identifiedBy: aString 	color := aCssColor.	identification := aString !

newWithAlpha: alphaValue	^color newWithAlpha: alphaValue! !
!CssIdentifiedColor categoriesFor: #color!Accessing!public! !
!CssIdentifiedColor categoriesFor: #cssContentOn:!Printing!public! !
!CssIdentifiedColor categoriesFor: #identifiedBy:!Converting!public! !
!CssIdentifiedColor categoriesFor: #initializeRepresenting:identifiedBy:!initialize/release!public! !
!CssIdentifiedColor categoriesFor: #newWithAlpha:!Converting!public! !

!CssIdentifiedColor class methodsFor!

assertIsOfSizeSix: aString	AssertionChecker enforce: [ aString size = 6 ] because: 'Invalid hexadecimal notation for a color.' raising: InstanceCreationFailed!

expandToExtendedHexaNotation: aString	"If the string is specified in the 3 letters short notation, expand it to six"	^ aString size = 3		then: [ '<1s><1s><2s><2s><3s><3s>'				expandMacrosWith: aString first asString				with: aString second asString				with: aString third asString			]		otherwise: [ aString ]!

fromHexadecimalNotation: aString	| numberInHexaNotation red green blue |	numberInHexaNotation := self expandToExtendedHexaNotation: aString.	self assertIsOfSizeSix: numberInHexaNotation.	red := Integer readFrom: (numberInHexaNotation copyFrom: 1 to: 2) base: 16.	green := Integer readFrom: (numberInHexaNotation copyFrom: 3 to: 4) base: 16.	blue := Integer readFrom: (numberInHexaNotation copyFrom: 5 to: 6) base: 16.	^ self representing: (CssRGBColor red: red green: green blue: blue) identifiedBy: ('#<1s>' expandMacrosWith: aString)!

representing: aCssColor identifiedBy: aString 		^self new initializeRepresenting: aCssColor identifiedBy: aString ! !
!CssIdentifiedColor class categoriesFor: #assertIsOfSizeSix:!private! !
!CssIdentifiedColor class categoriesFor: #expandToExtendedHexaNotation:!private! !
!CssIdentifiedColor class categoriesFor: #fromHexadecimalNotation:!Instance Creation!public! !
!CssIdentifiedColor class categoriesFor: #representing:identifiedBy:!Instance Creation!public! !

