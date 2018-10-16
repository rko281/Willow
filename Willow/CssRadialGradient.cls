﻿"Filed out from Dolphin Smalltalk 7"!

CssGradient subclass: #CssRadialGradient
	instanceVariableNames: 'shape colorStops functionName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRadialGradient guid: (GUID fromString: '{50cbfec9-c331-4f74-a2b0-015795598069}')!
CssRadialGradient comment: 'In a radial gradient, rather than colors smoothly fading from one side of the gradient box to the other as with linear gradients, they instead emerge from a single point and smoothly spread outward in a circular or elliptical shape.'!
!CssRadialGradient categoriesForClass!RenoirSt-Colors! !
!CssRadialGradient methodsFor!

beRepeating

colorStops

functionName

initializeShape: aShapeSpec fading: aColorStopCollection 

shape
!CssRadialGradient categoriesFor: #beRepeating!Configuring!public! !
!CssRadialGradient categoriesFor: #colorStops!private! !
!CssRadialGradient categoriesFor: #functionName!private! !
!CssRadialGradient categoriesFor: #initializeShape:fading:!initialize/release!public! !
!CssRadialGradient categoriesFor: #shape!private! !

!CssRadialGradient class methodsFor!

circular: aRadiusOrKeyword at: aPosition fading: colorStops 

circular: aRadiusOrKeyword fading: colorStops

elliptical: aCssValue at: aPosition fading: colorStops

elliptical: aCssValue fading: colorStops

fading: aColorStopCollection 

shape: aShapeSpec fading: aColorStopCollection
!CssRadialGradient class categoriesFor: #circular:at:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #circular:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #elliptical:at:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #elliptical:fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #fading:!Instance Creation!public! !
!CssRadialGradient class categoriesFor: #shape:fading:!private! !
