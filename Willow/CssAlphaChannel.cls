"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CssAlphaChannel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAlphaChannel guid: (GUID fromString: '{c17c4b1c-4f66-43ae-a7de-84591609c5f4}')!
CssAlphaChannel comment: 'A CssAlphaChannelComponent is the abstract class of the alpha channel provision'!
!CssAlphaChannel categoriesForClass!RenoirSt-Colors! !
!CssAlphaChannel methodsFor!

componentsDo: aBlockClosure separatedBy: aSeparationBlock 	self subclassResponsibility !

functionNameFor: aBasicFunctionName	self subclassResponsibility ! !
!CssAlphaChannel categoriesFor: #componentsDo:separatedBy:!Enumerating!public! !
!CssAlphaChannel categoriesFor: #functionNameFor:!Accessing!public! !

