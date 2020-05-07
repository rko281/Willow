"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssSkew
	instanceVariableNames: 'values function'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssSkew guid: (GUID fromString: '{595e19c7-70ad-4b59-a41b-a0c402a645a2}')!
CssSkew comment: ''!
!CssSkew categoriesForClass!RenoirSt-Core-Transformation! !
!CssSkew methodsFor!

cssFunctionParametersContentOn: aWriteStream 	values		do: [ :value | value cssContentOn: aWriteStream ]		separatedBy: [ 			aWriteStream				nextPut: $,;				space ]!

functionName	^ function !

initializeFirstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName	values := OrderedCollection with: aCssMeasure.	function := aFunctionName.	anotherCssMeasure asString isEmpty ifFalse: [ values add: anotherCssMeasure ]! !
!CssSkew categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssSkew categoriesFor: #functionName!private! !
!CssSkew categoriesFor: #initializeFirstValue:secondValue:usingFunction:!Initialization!public! !

!CssSkew class methodsFor!

by: aCssMeasure 	^ self firstValue: aCssMeasure secondValue: '' usingFunction: 'skew'!

firstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName 	^ self new initializeFirstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: aFunctionName !

onlyOnXAxisBy: aCssMeasure 	^ self firstValue: aCssMeasure secondValue: '' usingFunction: 'skewX'!

onlyOnYAxisBy: aCssMeasure 	^ self firstValue: aCssMeasure secondValue: '' usingFunction: 'skewY'!

onXAxisBy: aCssMeasure andYAxisBy: anotherCssMeasure	^ self firstValue: aCssMeasure secondValue: anotherCssMeasure usingFunction: 'skew'! !
!CssSkew class categoriesFor: #by:!Instance Creation!public! !
!CssSkew class categoriesFor: #firstValue:secondValue:usingFunction:!private / Instance Creation!public! !
!CssSkew class categoriesFor: #onlyOnXAxisBy:!Instance Creation!public! !
!CssSkew class categoriesFor: #onlyOnYAxisBy:!Instance Creation!public! !
!CssSkew class categoriesFor: #onXAxisBy:andYAxisBy:!Instance Creation!public! !

