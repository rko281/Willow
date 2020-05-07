"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssCubicBezier
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssCubicBezier guid: (GUID fromString: '{a4dd9bb6-132f-4479-b256-761ed216965d}')!
CssCubicBezier comment: ''!
!CssCubicBezier categoriesForClass!RenoirSt-Core-Easing! !
!CssCubicBezier methodsFor!

cssFunctionParametersContentOn: aWriteStream 	values		do: [ :value | value cssContentOn: aWriteStream ]		separatedBy: [ 			aWriteStream				nextPut: $,;				space ]!

functionName	^ 'cubic-bezier'!

initializeFirstXAxis: firstXAxisNumber firstYAxis: firstYAxisNumber secondXAxis: secondXAxisNumber secondYAxis: secondYAxisNumber		values := OrderedCollection with: firstXAxisNumber with: firstYAxisNumber 		with: secondXAxisNumber with: secondYAxisNumber ! !
!CssCubicBezier categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssCubicBezier categoriesFor: #functionName!private! !
!CssCubicBezier categoriesFor: #initializeFirstXAxis:firstYAxis:secondXAxis:secondYAxis:!Initialization!public! !

!CssCubicBezier class methodsFor!

firstXAxis: firstXAxisNumber firstYAxis: firstYAxisNumber secondXAxis: secondXAxisNumber secondYAxis: secondYAxisNumber	^ self new initializeFirstXAxis: firstXAxisNumber firstYAxis: firstYAxisNumber secondXAxis: secondXAxisNumber secondYAxis: secondYAxisNumber! !
!CssCubicBezier class categoriesFor: #firstXAxis:firstYAxis:secondXAxis:secondYAxis:!Instance Creation!public! !

