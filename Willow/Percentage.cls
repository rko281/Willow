﻿"Filed out from Dolphin Smalltalk 7"!

PartsPerFraction subclass: #Percentage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'zeroPercent oneHundredPercent'!
Percentage guid: (GUID fromString: '{afdc6550-ffbc-49d5-a630-61bad258648b}')!
Percentage comment: 'A percentage is a number or ratio expressed as a fraction of 100. It is often denoted using the percent sign, "%".  A percentage is a dimensionless number '!
!Percentage categoriesForClass!Buoy-Math! !
!Percentage methodsFor!

isPercentage

printOn: aStream base: anInteger

storeOn: aStream
!Percentage categoriesFor: #isPercentage!public!testing! !
!Percentage categoriesFor: #printOn:base:!printing!public! !
!Percentage categoriesFor: #storeOn:!printing!public! !

!Percentage class methodsFor!

fraction

initialize

oneHundred

zero
!Percentage class categoriesFor: #fraction!private! !
!Percentage class categoriesFor: #initialize!initialization!public! !
!Percentage class categoriesFor: #oneHundred!Instance Creation!public! !
!Percentage class categoriesFor: #zero!Instance Creation!public! !
