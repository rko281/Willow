"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssScale
	instanceVariableNames: 'values function'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssScale guid: (GUID fromString: '{03036fa9-f03c-4377-9ecc-2314fd73efe7}')!
CssScale comment: ''!
!CssScale categoriesForClass!RenoirSt-Core-Transformation! !
!CssScale methodsFor!

cssFunctionParametersContentOn: aWriteStream		values		do: [ :value | value cssContentOn: aWriteStream ]		separatedBy: [ 			aWriteStream				nextPut: $,;				space ]!

functionName	^ function !

initializeFirstAxisValue: anInteger secondAxisValue: anotherInteger andThirdAxisValue: aThirdInteger usingFunction: aFunctionName 		values := OrderedCollection with: anInteger.	function := aFunctionName.		anotherInteger asString isEmpty ifFalse: [ values add: anotherInteger ].	aThirdInteger asString isEmpty ifFalse: [ values add: aThirdInteger ]! !
!CssScale categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssScale categoriesFor: #functionName!private! !
!CssScale categoriesFor: #initializeFirstAxisValue:secondAxisValue:andThirdAxisValue:usingFunction:!Initialization!public! !

!CssScale class methodsFor!

by: anInteger 	^ self onXAxisBy: anInteger andYAxisBy: ''!

firstAxisValue: anInteger secondAxisValue: anotherInteger thirdAxisValue: aThirdInteger usingFunction: aFunctionName 	^ self new		initializeFirstAxisValue: anInteger		secondAxisValue: anotherInteger		andThirdAxisValue: aThirdInteger		usingFunction: aFunctionName!

onlyOnXAxisBy: anInteger 	^ self		firstAxisValue: anInteger 		secondAxisValue: '' 		thirdAxisValue: '' 		usingFunction: 'scaleX'!

onlyOnYAxisBy: anInteger 	^ self		firstAxisValue: anInteger 		secondAxisValue: '' 		thirdAxisValue: '' 		usingFunction: 'scaleY'!

onlyOnZAxisBy: anInteger 	^ self		firstAxisValue: anInteger 		secondAxisValue: '' 		thirdAxisValue: '' 		usingFunction: 'scaleZ'!

onXAxisBy: anInteger andYAxisBy: anotherInteger	^ self 		firstAxisValue: anInteger 		secondAxisValue: anotherInteger 		thirdAxisValue: '' 		usingFunction: 'scale'!

onXAxisBy: anInteger onYAxisBy: anotherInteger andZAxisBy: aThirdInteger	^ self		firstAxisValue: anInteger		secondAxisValue: anotherInteger		thirdAxisValue: aThirdInteger		usingFunction: 'scale3d'! !
!CssScale class categoriesFor: #by:!Instance Creation!public! !
!CssScale class categoriesFor: #firstAxisValue:secondAxisValue:thirdAxisValue:usingFunction:!private / Instance Creation!public! !
!CssScale class categoriesFor: #onlyOnXAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onlyOnYAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onlyOnZAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onXAxisBy:andYAxisBy:!Instance Creation!public! !
!CssScale class categoriesFor: #onXAxisBy:onYAxisBy:andZAxisBy:!Instance Creation!public! !

