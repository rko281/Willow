﻿"Filed out from Dolphin Smalltalk 7"!

CssColor subclass: #CssRGBColor
	instanceVariableNames: 'redComponent greenComponent blueComponent alphaChannel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRGBColor guid: (GUID fromString: '{341a0031-c9c1-4c05-99c7-87ce3f2dfcf7}')!
CssRGBColor comment: 'The RGB color model is used in numerical color specifications.'!
!CssRGBColor categoriesForClass!RenoirSt-Colors! !
!CssRGBColor methodsFor!

componentsDo: aBlockClosure separatedBy: aSeparationBlock

functionName

initializeRed: aRedComponent green: aGreenComponent blue: aBlueComponent alphaChannel: theAlphaChannelInfo

newWithAlpha: alphaValue
!CssRGBColor categoriesFor: #componentsDo:separatedBy:!private! !
!CssRGBColor categoriesFor: #functionName!private! !
!CssRGBColor categoriesFor: #initializeRed:green:blue:alphaChannel:!initialize/release!public! !
!CssRGBColor categoriesFor: #newWithAlpha:!private! !

!CssRGBColor class methodsFor!

red: aRedComponent green: aGreenComponent blue: aBlueComponent

red: aRedComponent green: aGreenComponent blue: aBlueComponent alpha: aNumber

red: aRedComponent green: aGreenComponent blue: aBlueComponent alphaChannel: theAlphaChannelInfo
!CssRGBColor class categoriesFor: #red:green:blue:!Instance Creation!public! !
!CssRGBColor class categoriesFor: #red:green:blue:alpha:!Instance Creation!public! !
!CssRGBColor class categoriesFor: #red:green:blue:alphaChannel:!private! !
