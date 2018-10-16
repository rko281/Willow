﻿"Filed out from Dolphin Smalltalk 7"!

CssGradient subclass: #CssLinearGradient
	instanceVariableNames: 'direction colorStops functionName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssLinearGradient guid: (GUID fromString: '{879f306b-e711-4b78-b79b-73d82f0306d0}')!
CssLinearGradient comment: 'A linear gradient is created by specifying a gradient line and then several colors placed along that line. The image is constructed by creating an infinite canvas and painting it with lines perpendicular to the gradient line, with the color of the painted line being the color of the gradient line where the two intersect. This produces a smooth fade from each color to the next, progressing in the specified direction.'!
!CssLinearGradient categoriesForClass!RenoirSt-Colors! !
!CssLinearGradient methodsFor!

beRepeating

colorStops

functionName

initializeIn: aDirection fading: aColorStopCollection

shape
!CssLinearGradient categoriesFor: #beRepeating!Configuring!public! !
!CssLinearGradient categoriesFor: #colorStops!private! !
!CssLinearGradient categoriesFor: #functionName!private! !
!CssLinearGradient categoriesFor: #initializeIn:fading:!initialize/release!public! !
!CssLinearGradient categoriesFor: #shape!private! !

!CssLinearGradient class methodsFor!

fading: aColorStopCollection

in: aDirection fading: aColorStopCollection

rotated: aCssAngle fading: aColorStopCollection 

to: aKeywordDirectionOrCollection fading: aColorStopCollection 
!CssLinearGradient class categoriesFor: #fading:!Instance Creation!public! !
!CssLinearGradient class categoriesFor: #in:fading:!private! !
!CssLinearGradient class categoriesFor: #rotated:fading:!Instance Creation!public! !
!CssLinearGradient class categoriesFor: #to:fading:!Instance Creation!public! !
