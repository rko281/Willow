"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssFunction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssFunction guid: (GUID fromString: '{1662cc23-9375-443c-9a70-0b887202dec0}')!
CssFunction comment: 'A CssFunction represents an abstract CSS function'!
!CssFunction categoriesForClass!RenoirSt-Common! !
!CssFunction methodsFor!

cssContentOn: aWriteStream		aWriteStream		nextPutAll: self functionName;		nextPut: $(.	self cssFunctionParametersContentOn: aWriteStream.	aWriteStream nextPut: $)!

cssFunctionParametersContentOn: aWriteStream		self subclassResponsibility !

functionName		self subclassResponsibility ! !
!CssFunction categoriesFor: #cssContentOn:!Printing!public! !
!CssFunction categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssFunction categoriesFor: #functionName!private! !

