﻿"Filed out from Dolphin Smalltalk 7"!

CssColor subclass: #CssHSLColor
	instanceVariableNames: 'hue saturation lightness alphaChannel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssHSLColor guid: (GUID fromString: '{e8892cec-d5f8-4e6f-8722-a51e077b5765}')!
CssHSLColor comment: 'HSL colors are encoding as a triple (hue, saturation, lightness). 
!CssHSLColor categoriesForClass!RenoirSt-Colors! !
!CssHSLColor methodsFor!

componentsDo: aBlockClosure separatedBy: aSeparationBlock

functionName

initializeHue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alphaChannel: aCssAlphaChannel

newWithAlpha: alphaValue
!CssHSLColor categoriesFor: #componentsDo:separatedBy:!private! !
!CssHSLColor categoriesFor: #functionName!private! !
!CssHSLColor categoriesFor: #initializeHue:saturation:lightness:alphaChannel:!initialize/release!public! !
!CssHSLColor categoriesFor: #newWithAlpha:!Converting!public! !

!CssHSLColor class methodsFor!

hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage 

hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alpha: aNumber

hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alphaChannel: aCssAlphaChannel
!CssHSLColor class categoriesFor: #hue:saturation:lightness:!Instance Creation!public! !
!CssHSLColor class categoriesFor: #hue:saturation:lightness:alpha:!Instance Creation!public! !
!CssHSLColor class categoriesFor: #hue:saturation:lightness:alphaChannel:!private! !
