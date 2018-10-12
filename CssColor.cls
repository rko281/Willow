"Filed out from Dolphin Smalltalk 7"!

CssColorUnit subclass: #CssColor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssColor guid: (GUID fromString: '{35ac1c63-b30c-403c-95eb-7f162dbde22b}')!
CssColor comment: 'A CssColor is a color suitable for use in CSS'!
!CssColor categoriesForClass!RenoirSt-Colors! !
!CssColor methodsFor!

componentsDo: aBlockClosure separatedBy: aSeparationBlock 		self subclassResponsibility !

cssContentOn: aWriteStream	aWriteStream		nextPutAll: self functionName;		nextPut: $(.	self componentsDo: [ :component | component cssContentOn: aWriteStream ] separatedBy: [ aWriteStream nextPut: $, ].	aWriteStream nextPut: $)!

functionName		self subclassResponsibility !

identifiedBy: aString	 ^CssIdentifiedColor representing: self identifiedBy: aString ! !
!CssColor categoriesFor: #componentsDo:separatedBy:!private! !
!CssColor categoriesFor: #cssContentOn:!Printing!public! !
!CssColor categoriesFor: #functionName!private! !
!CssColor categoriesFor: #identifiedBy:!Converting!public! !

