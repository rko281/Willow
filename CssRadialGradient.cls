"Filed out from Dolphin Smalltalk 7"!

CssGradient subclass: #CssRadialGradient
	instanceVariableNames: 'shape colorStops functionName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRadialGradient guid: (GUID fromString: '{50cbfec9-c331-4f74-a2b0-015795598069}')!
CssRadialGradient comment: 'In a radial gradient, rather than colors smoothly fading from one side of the gradient box to the other as with linear gradients, they instead emerge from a single point and smoothly spread outward in a circular or elliptical shape.'!
!CssRadialGradient categoriesForClass!RenoirSt-Colors! !
!CssRadialGradient methodsFor!

beRepeating		functionName := 'repeating-radial-gradient'!

colorStops	^ colorStops!

functionName	^ functionName!

initializeShape: aShapeSpec fading: aColorStopCollection 	functionName := 'radial-gradient'.	shape := aShapeSpec.	colorStops := aColorStopCollection !

shape	^ shape! !
!CssRadialGradient categoriesFor: #beRepeating!Configuring!public! !
!CssRadialGradient categoriesFor: #colorStops!private! !
!CssRadialGradient categoriesFor: #functionName!private! !
!CssRadialGradient categoriesFor: #initializeShape:fading:!initialize/release!public! !
!CssRadialGradient categoriesFor: #shape!private! !

!CssRadialGradient class methodsFor!

circular: aRadiusOrKeyword at: aPosition fading: colorStops 		^self shape: (CssGradientComponent on: { aRadiusOrKeyword . 'circle'. 'at'. self lookupValue: aPosition }) fading: colorStops!

circular: aRadiusOrKeyword fading: colorStops		^self shape: (CssGradientComponent on: {aRadiusOrKeyword. 'circle'}) fading: colorStops !

elliptical: aCssValue at: aPosition fading: colorStops	^ self		shape:(CssGradientComponent on: {aCssValue. 'ellipse'. 'at'. (self lookupValue: aPosition)})		fading: colorStops!

elliptical: aCssValue fading: colorStops		^self shape: (CssGradientComponent on: {aCssValue. 'ellipse'}) fading: colorStops !

fading: aColorStopCollection 		^self shape: '' fading: aColorStopCollection !

shape: aShapeSpec fading: aColorStopCollection	^ self new initializeShape: aShapeSpec fading: (self asColorStops: aColorStopCollection)! !
!CssRadialGradient class categoriesFor: #circular:at:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #circular:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #elliptical:at:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #elliptical:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #shape:fading:!private! !

