"Filed out from Dolphin Smalltalk 7"!

CssColor subclass: #CssHSLColor
	instanceVariableNames: 'hue saturation lightness alphaChannel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssHSLColor guid: (GUID fromString: '{e8892cec-d5f8-4e6f-8722-a51e077b5765}')!
CssHSLColor comment: 'HSL colors are encoding as a triple (hue, saturation, lightness). Hue is represented as an angle of the color circle. Saturation and lightness are represented as percentages. 100% is full saturation, and 0% is a shade of gray. 0% lightness is black, 100% lightness is white, and 50% lightness is “normal”.'!
!CssHSLColor categoriesForClass!RenoirSt-Colors! !
!CssHSLColor methodsFor!

componentsDo: aBlockClosure separatedBy: aSeparationBlock	aBlockClosure value: hue.	aSeparationBlock value.	aBlockClosure value: saturation .	aSeparationBlock value.	aBlockClosure value: lightness .	alphaChannel componentsDo: aBlockClosure separatedBy: aSeparationBlock	!

functionName	^ alphaChannel functionNameFor: 'hsl'!

initializeHue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alphaChannel: aCssAlphaChannel		hue := aHueValueInDegrees.	saturation := aSaturationPercentage.	lightness := aLightnessPercentage.	alphaChannel := aCssAlphaChannel!

newWithAlpha: alphaValue	^ self class		hue: hue		saturation: saturation		lightness: lightness		alpha: alphaValue! !
!CssHSLColor categoriesFor: #componentsDo:separatedBy:!private! !
!CssHSLColor categoriesFor: #functionName!private! !
!CssHSLColor categoriesFor: #initializeHue:saturation:lightness:alphaChannel:!initialize/release!public! !
!CssHSLColor categoriesFor: #newWithAlpha:!Converting!public! !

!CssHSLColor class methodsFor!

hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage 		^self hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alphaChannel: CssNoAlphaChannelProvided new!

hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alpha: aNumber		^ self		hue: aHueValueInDegrees		saturation: aSaturationPercentage		lightness: aLightnessPercentage		alphaChannel: (CssAlphaChannelProvided withValue: aNumber)!

hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alphaChannel: aCssAlphaChannel		^ self new		initializeHue: aHueValueInDegrees		saturation: aSaturationPercentage		lightness: aLightnessPercentage		alphaChannel: aCssAlphaChannel! !
!CssHSLColor class categoriesFor: #hue:saturation:lightness:!Instance Creation!public! !
!CssHSLColor class categoriesFor: #hue:saturation:lightness:alpha:!Instance Creation!public! !
!CssHSLColor class categoriesFor: #hue:saturation:lightness:alphaChannel:!private! !

