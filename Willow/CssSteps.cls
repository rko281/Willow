"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssSteps
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssSteps guid: (GUID fromString: '{6b0907fd-cc32-46ea-a790-b7af12b91b72}')!
CssSteps comment: ''!
!CssSteps categoriesForClass!RenoirSt-Core-Easing! !
!CssSteps methodsFor!

cssFunctionParametersContentOn: aWriteStream 	values		do: [ :value | value cssContentOn: aWriteStream ]		separatedBy: [ 			aWriteStream				nextPut: $,;				space ]!

functionName	^ 'steps'!

steps: anInteger headingTo: aConstant	values := OrderedCollection with: anInteger.	aConstant isEmpty ifFalse: [ values add: aConstant ]! !
!CssSteps categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssSteps categoriesFor: #functionName!private! !
!CssSteps categoriesFor: #steps:headingTo:!Initialization!public! !

!CssSteps class methodsFor!

by: anInteger 	^ self steps: anInteger headingTo: ''!

by: anInteger direction: aConstant 	^ self steps: anInteger headingTo: aConstant.!

steps: anInteger headingTo: aConstant 	 ^ self new initialize steps: anInteger headingTo: aConstant! !
!CssSteps class categoriesFor: #by:!Instance Creation!public! !
!CssSteps class categoriesFor: #by:direction:!Instance Creation!public! !
!CssSteps class categoriesFor: #steps:headingTo:!private / Instance Creation!public! !

