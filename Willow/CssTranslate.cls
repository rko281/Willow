"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssTranslate
	instanceVariableNames: 'values function'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssTranslate guid: (GUID fromString: '{691bf11f-d046-4a00-9acb-657a023b6299}')!
CssTranslate comment: ''!
!CssTranslate categoriesForClass!RenoirSt-Core-Transformation! !
!CssTranslate methodsFor!

cssFunctionParametersContentOn: aWriteStream		values		do: [ :value | value cssContentOn: aWriteStream ]		separatedBy: [ 			aWriteStream				nextPut: $,;				space ]!

functionName		^ function !

initializeFirstAxisValue: aCssMeasure secondAxisValue: anotherCssMeasure andThirdAxisValue: aThirdCssMeasure usingFunction: aFunctionName	values := OrderedCollection with: aCssMeasure.	function := aFunctionName.	anotherCssMeasure asString isEmpty ifFalse: [ values add: anotherCssMeasure ].	aThirdCssMeasure asString isEmpty ifFalse: [ values add: aThirdCssMeasure ]! !
!CssTranslate categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssTranslate categoriesFor: #functionName!private! !
!CssTranslate categoriesFor: #initializeFirstAxisValue:secondAxisValue:andThirdAxisValue:usingFunction:!Initialization!public! !

!CssTranslate class methodsFor!

by: aCssMeasure 		^ self onXAxisBy: aCssMeasure andYAxisBy: ''!

firstAxisValue: aCssMeasure secondAxisValue: anotherCssMeasure thirdAxisValue: aThirdCssMeasure usingFunction: aFunctionName	^ self new 		initializeFirstAxisValue: aCssMeasure 		secondAxisValue: anotherCssMeasure 		andThirdAxisValue: aThirdCssMeasure 		usingFunction: aFunctionName!

onlyOnXAxisBy: aCssMeasure 	^ self		firstAxisValue: aCssMeasure		secondAxisValue: ''		thirdAxisValue: ''		usingFunction: 'translateX'!

onlyOnYAxisBy: aCssMeasure 	^ self		firstAxisValue: aCssMeasure		secondAxisValue: ''		thirdAxisValue: ''		usingFunction: 'translateY'!

onlyOnZAxisBy: aCssMeasure	^ self		firstAxisValue: aCssMeasure		secondAxisValue: ''		thirdAxisValue: ''		usingFunction: 'translateZ'!

onXAxisBy: aCssMeasure andYAxisBy: anotherCssMeasure	^ self		firstAxisValue: aCssMeasure		secondAxisValue: anotherCssMeasure 		thirdAxisValue: ''		usingFunction: 'translate'!

onXAxisBy: aCssMeasure onYAxisBy: anotherCssMeasure andZAxisBy: aThirdCssMeasure	^ self		firstAxisValue: aCssMeasure		secondAxisValue: anotherCssMeasure		thirdAxisValue: aThirdCssMeasure		usingFunction: 'translate3d'! !
!CssTranslate class categoriesFor: #by:!Instance Creation!public! !
!CssTranslate class categoriesFor: #firstAxisValue:secondAxisValue:thirdAxisValue:usingFunction:!private / Instance Creation!public! !
!CssTranslate class categoriesFor: #onlyOnXAxisBy:!Instance Creation!public! !
!CssTranslate class categoriesFor: #onlyOnYAxisBy:!Instance Creation!public! !
!CssTranslate class categoriesFor: #onlyOnZAxisBy:!Instance Creation!public! !
!CssTranslate class categoriesFor: #onXAxisBy:andYAxisBy:!Instance Creation!public! !
!CssTranslate class categoriesFor: #onXAxisBy:onYAxisBy:andZAxisBy:!Instance Creation!public! !

