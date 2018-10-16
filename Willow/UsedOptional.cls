﻿"Filed out from Dolphin Smalltalk 7"!

Optional subclass: #UsedOptional
	instanceVariableNames: 'content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UsedOptional guid: (GUID fromString: '{cf99fd3e-d537-4e4d-a13c-22033c203ac2}')!
UsedOptional comment: 'I''m an optional containing some object'!
!UsedOptional categoriesForClass!Buoy-Dynamic-Binding! !
!UsedOptional methodsFor!

equalsTo: anObject

initializeContaining: anObject

printOn: aStream

return: aMonadycBlock

whenAllUsedIn: optionals return: aMonadycBlock

with: anOptional whenAnyUsedReturn: aDyadicBlock

with: anOptional whenBothUsedReturn: aDyadicBlock

withContentDo: aBlockClosure ifUnused: aNothingBlock 

withUsedOnlyIn: optionals return: aMonadycBlock
!UsedOptional categoriesFor: #equalsTo:!private! !
!UsedOptional categoriesFor: #initializeContaining:!initialization!public! !
!UsedOptional categoriesFor: #printOn:!printing!public! !
!UsedOptional categoriesFor: #return:!combining!public! !
!UsedOptional categoriesFor: #whenAllUsedIn:return:!combining!public! !
!UsedOptional categoriesFor: #with:whenAnyUsedReturn:!combining!public! !
!UsedOptional categoriesFor: #with:whenBothUsedReturn:!combining!public! !
!UsedOptional categoriesFor: #withContentDo:ifUnused:!accessing!public! !
!UsedOptional categoriesFor: #withUsedOnlyIn:return:!combining!public! !

!UsedOptional class methodsFor!

containing: anObject
!UsedOptional class categoriesFor: #containing:!instance creation!public! !
