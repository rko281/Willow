﻿"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssSkew
	instanceVariableNames: 'values function'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssSkew guid: (GUID fromString: '{595e19c7-70ad-4b59-a41b-a0c402a645a2}')!
CssSkew comment: ''!
!CssSkew categoriesForClass!RenoirSt-Core-Transformation! !
!CssSkew methodsFor!

cssFunctionParametersContentOn: aWriteStream 

functionName

initializeFirstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName
!CssSkew categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssSkew categoriesFor: #functionName!private! !
!CssSkew categoriesFor: #initializeFirstValue:secondValue:usingFunction:!Initialization!public! !

!CssSkew class methodsFor!

by: aCssMeasure 

firstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName 

onlyOnXAxisBy: aCssMeasure 

onlyOnYAxisBy: aCssMeasure 

onXAxisBy: aCssMeasure andYAxisBy: anotherCssMeasure
!CssSkew class categoriesFor: #by:!Instance Creation!public! !
!CssSkew class categoriesFor: #firstValue:secondValue:usingFunction:!private / Instance Creation!public! !
!CssSkew class categoriesFor: #onlyOnXAxisBy:!Instance Creation!public! !
!CssSkew class categoriesFor: #onlyOnYAxisBy:!Instance Creation!public! !
!CssSkew class categoriesFor: #onXAxisBy:andYAxisBy:!Instance Creation!public! !
