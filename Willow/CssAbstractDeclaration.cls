"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssAbstractDeclaration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAbstractDeclaration guid: (GUID fromString: '{6129b5b4-a568-48a5-b770-fcc18009b828}')!
CssAbstractDeclaration comment: 'A CssAbstractDeclaration defines the common behavior for the declarations.'!
!CssAbstractDeclaration categoriesForClass!RenoirSt-Common! !
!CssAbstractDeclaration methodsFor!

cssContentEndingOn: aStream	aStream nextPut: $;!

cssContentOn: aStream	self property cssContentOn: aStream.	aStream		nextPut: $:;		space.	self value cssContentOn: aStream.	self cssContentEndingOn: aStream!

property	self subclassResponsibility !

value	self subclassResponsibility ! !
!CssAbstractDeclaration categoriesFor: #cssContentEndingOn:!private! !
!CssAbstractDeclaration categoriesFor: #cssContentOn:!Printing!public! !
!CssAbstractDeclaration categoriesFor: #property!private! !
!CssAbstractDeclaration categoriesFor: #value!private! !

