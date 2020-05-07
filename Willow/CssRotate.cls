"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssRotate
	instanceVariableNames: 'rotationDegrees function'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRotate guid: (GUID fromString: '{065e5781-9e55-41d0-87ae-9b1997e9f575}')!
CssRotate comment: ''!
!CssRotate categoriesForClass!RenoirSt-Core-Transformation! !
!CssRotate methodsFor!

cssFunctionParametersContentOn: aWriteStream		rotationDegrees cssContentOn: aWriteStream.!

functionName		^function!

initializeBy: aCssMeasure usingFunction: aFunctionName	rotationDegrees := aCssMeasure.	function := aFunctionName! !
!CssRotate categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssRotate categoriesFor: #functionName!private! !
!CssRotate categoriesFor: #initializeBy:usingFunction:!initialization!public! !

!CssRotate class methodsFor!

by: aCssMeasure	^ self by: aCssMeasure usingFunction: 'rotate'!

by: aCssMeasure usingFunction: aFunctionName	^ self new initializeBy: aCssMeasure usingFunction: aFunctionName !

onXAxisBy: aCssMeasure 	^ self by: aCssMeasure usingFunction: 'rotateX'!

onYAxisBy: aCssMeasure 	^ self by: aCssMeasure usingFunction: 'rotateY'!

onZAxisBy: aCssMeasure 	^ self by: aCssMeasure usingFunction: 'rotateZ'! !
!CssRotate class categoriesFor: #by:!Instance Creation!public! !
!CssRotate class categoriesFor: #by:usingFunction:!private / Instance Creation!public! !
!CssRotate class categoriesFor: #onXAxisBy:!Instance Creation!public! !
!CssRotate class categoriesFor: #onYAxisBy:!Instance Creation!public! !
!CssRotate class categoriesFor: #onZAxisBy:!Instance Creation!public! !

