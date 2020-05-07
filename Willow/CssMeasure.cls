"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssMeasure
	instanceVariableNames: 'quantity unit'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssMeasure guid: (GUID fromString: '{3223aaf9-61a6-4078-bd36-00ea25c855c2}')!
CssMeasure comment: 'Generic measurements. Can be lengths, resolutions, time, etc'!
!CssMeasure categoriesForClass!RenoirSt-Core-Units! !
!CssMeasure methodsFor!

cssContentOn: aStream 		quantity cssContentOn: aStream.	unit cssContentOn: aStream !

initializeQuantity: aNumber unit: aCssLengthUnit		quantity := aNumber.	unit := aCssLengthUnit! !
!CssMeasure categoriesFor: #cssContentOn:!Printing!public! !
!CssMeasure categoriesFor: #initializeQuantity:unit:!initialize/release!public! !

!CssMeasure class methodsFor!

quantity: aNumber unit: aCssLengthUnit 		^self new initializeQuantity: aNumber unit: aCssLengthUnit ! !
!CssMeasure class categoriesFor: #quantity:unit:!Instance Creation!public! !

