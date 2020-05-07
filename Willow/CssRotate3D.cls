"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssRotate3D
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRotate3D guid: (GUID fromString: '{63e3882c-4b12-4fb0-bc84-5c253daaa788}')!
CssRotate3D comment: ''!
!CssRotate3D categoriesForClass!RenoirSt-Core-Transformation! !
!CssRotate3D methodsFor!

cssFunctionParametersContentOn: aWriteStream 	values		do: [ :value | value cssContentOn: aWriteStream ]		separatedBy: [ 			aWriteStream				nextPut: $,;				space ]!

functionName	^ 'rotate3d'!

initializeOnXAxis: anXAxisCoordinate yAxis: aYAxisCoordinate zAxis: aZAxisCoordinate by: aCssMeasure	values := OrderedCollection		with: anXAxisCoordinate		with: aYAxisCoordinate		with: aZAxisCoordinate		with: aCssMeasure! !
!CssRotate3D categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssRotate3D categoriesFor: #functionName!private! !
!CssRotate3D categoriesFor: #initializeOnXAxis:yAxis:zAxis:by:!Initialization!public! !

!CssRotate3D class methodsFor!

onXAxis: anXAxisCoordinate yAxis: aYAxisCoordinate zAxis: aZAxisCoordinate by: aCssMeasure 	^ self new initializeOnXAxis: anXAxisCoordinate yAxis: aYAxisCoordinate zAxis: aZAxisCoordinate by: aCssMeasure ! !
!CssRotate3D class categoriesFor: #onXAxis:yAxis:zAxis:by:!Instance Creation!public! !

