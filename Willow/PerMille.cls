"Filed out from Dolphin Smalltalk 7"!

PartsPerFraction subclass: #PerMille
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PerMille guid: (GUID fromString: '{b68c5b59-03b8-4550-99af-c685f913c652}')!
PerMille comment: 'A per mille is a number or ratio expressed as a fraction of 1000. It is often denoted using the per mille sign, "‰".  A per mille is a dimensionless number '!
!PerMille categoriesForClass!Buoy-Math! !
!PerMille methodsFor!

printOn: aStream base: anInteger	self value printOn: aStream base: anInteger.	aStream nextPut: $‰!

storeOn: aStream	self value storeOn: aStream.	aStream		space;		nextPutAll: 'perMille'! !
!PerMille categoriesFor: #printOn:base:!printing!public! !
!PerMille categoriesFor: #storeOn:!printing!public! !

!PerMille class methodsFor!

fraction	^ 1000! !
!PerMille class categoriesFor: #fraction!private! !

