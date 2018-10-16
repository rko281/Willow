"Filed out from Dolphin Smalltalk 7"!

CssColor subclass: #CssRGBColor
	instanceVariableNames: 'redComponent greenComponent blueComponent alphaChannel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRGBColor guid: (GUID fromString: '{341a0031-c9c1-4c05-99c7-87ce3f2dfcf7}')!
CssRGBColor comment: 'The RGB color model is used in numerical color specifications.'!
!CssRGBColor categoriesForClass!RenoirSt-Colors! !
!CssRGBColor methodsFor!

componentsDo: aBlockClosure separatedBy: aSeparationBlock		aBlockClosure value: redComponent.	aSeparationBlock value.	aBlockClosure value: greenComponent.	aSeparationBlock value.	aBlockClosure value: blueComponent.	alphaChannel componentsDo: aBlockClosure separatedBy: aSeparationBlock !

functionName	^ alphaChannel functionNameFor: 'rgb'!

initializeRed: aRedComponent green: aGreenComponent blue: aBlueComponent alphaChannel: theAlphaChannelInfo		redComponent := aRedComponent.	greenComponent := aGreenComponent.	blueComponent := aBlueComponent.	alphaChannel := theAlphaChannelInfo!

newWithAlpha: alphaValue	^ self class		red: redComponent		green: greenComponent		blue: blueComponent		alpha: alphaValue! !
!CssRGBColor categoriesFor: #componentsDo:separatedBy:!private! !
!CssRGBColor categoriesFor: #functionName!private! !
!CssRGBColor categoriesFor: #initializeRed:green:blue:alphaChannel:!initialize/release!public! !
!CssRGBColor categoriesFor: #newWithAlpha:!private! !

!CssRGBColor class methodsFor!

red: aRedComponent green: aGreenComponent blue: aBlueComponent		^ self		red: aRedComponent		green: aGreenComponent		blue: aBlueComponent		alphaChannel: CssNoAlphaChannelProvided new!

red: aRedComponent green: aGreenComponent blue: aBlueComponent alpha: aNumber		^ self		red: aRedComponent		green: aGreenComponent		blue: aBlueComponent		alphaChannel: (CssAlphaChannelProvided withValue: aNumber)!

red: aRedComponent green: aGreenComponent blue: aBlueComponent alphaChannel: theAlphaChannelInfo		^ self new		initializeRed: aRedComponent		green: aGreenComponent		blue: aBlueComponent		alphaChannel: theAlphaChannelInfo! !
!CssRGBColor class categoriesFor: #red:green:blue:!Instance Creation!public! !
!CssRGBColor class categoriesFor: #red:green:blue:alpha:!Instance Creation!public! !
!CssRGBColor class categoriesFor: #red:green:blue:alphaChannel:!private! !

