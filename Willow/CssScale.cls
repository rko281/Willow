﻿"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssScale
	instanceVariableNames: 'values function'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssScale guid: (GUID fromString: '{03036fa9-f03c-4377-9ecc-2314fd73efe7}')!
CssScale comment: ''!
!CssScale categoriesForClass!RenoirSt-Core-Transformation! !
!CssScale methodsFor!

cssFunctionParametersContentOn: aWriteStream

functionName

initializeFirstAxisValue: anInteger secondAxisValue: anotherInteger andThirdAxisValue: aThirdInteger usingFunction: aFunctionName 
!CssScale categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssScale categoriesFor: #functionName!private! !
!CssScale categoriesFor: #initializeFirstAxisValue:secondAxisValue:andThirdAxisValue:usingFunction:!Initialization!public! !

!CssScale class methodsFor!

by: anInteger 

firstAxisValue: anInteger secondAxisValue: anotherInteger thirdAxisValue: aThirdInteger usingFunction: aFunctionName 

onlyOnXAxisBy: anInteger 

onlyOnYAxisBy: anInteger 

onlyOnZAxisBy: anInteger 

onXAxisBy: anInteger andYAxisBy: anotherInteger

onXAxisBy: anInteger onYAxisBy: anotherInteger andZAxisBy: aThirdInteger
!CssScale class categoriesFor: #by:!Instance Creation!public! !
!CssScale class categoriesFor: #firstAxisValue:secondAxisValue:thirdAxisValue:usingFunction:!private / Instance Creation!public! !
!CssScale class categoriesFor: #onlyOnXAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onlyOnYAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onlyOnZAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onXAxisBy:andYAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onXAxisBy:onYAxisBy:andZAxisBy:!Instance Creation!public! !
