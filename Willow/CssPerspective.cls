"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssPerspective
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssPerspective guid: (GUID fromString: '{42c65a00-934a-4e9b-9bf0-66851e5f7a03}')!
CssPerspective comment: ''!
!CssPerspective categoriesForClass!RenoirSt-Core-Transformation! !
!CssPerspective methodsFor!

cssFunctionParametersContentOn: aWriteStream 	^ value cssContentOn: aWriteStream !

functionName	^ 'perspective'!

initializeOf: aCssMeasure 		value := aCssMeasure ! !
!CssPerspective categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssPerspective categoriesFor: #functionName!private! !
!CssPerspective categoriesFor: #initializeOf:!Initialization!public! !

!CssPerspective class methodsFor!

of: aCssMeasure 		^ self new initializeOf: aCssMeasure ! !
!CssPerspective class categoriesFor: #of:!Instance Creation!public! !

