﻿"Filed out from Dolphin Smalltalk 7"!

Optional subclass: #UnusedOptional
	instanceVariableNames: 'explanations'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnusedOptional guid: (GUID fromString: '{4e917bf7-7297-4a02-9950-8bc2eaef579f}')!
UnusedOptional comment: 'I''m an optional representing the missing objects. I provide a list of explanations to aid the users.'!
!UnusedOptional categoriesForClass!Buoy-Dynamic-Binding! !
!UnusedOptional methodsFor!

equalsTo: anObject

initializeExplainedByAll: anExplanationCollection

printOn: aStream

return: aMonadycBlock

whenAllUsedIn: optionals return: aMonadycBlock

with: anOptional whenAnyUsedReturn: aBlockClosure

with: anOptional whenBothUsedReturn: aBlockClosure

withContentDo: aBlockClosure ifUnused: aNothingBlock 

withUsedOnlyIn: optionals return: aMonadycBlock
!UnusedOptional categoriesFor: #equalsTo:!private! !
!UnusedOptional categoriesFor: #initializeExplainedByAll:!initialization!public! !
!UnusedOptional categoriesFor: #printOn:!printing!public! !
!UnusedOptional categoriesFor: #return:!combining!public! !
!UnusedOptional categoriesFor: #whenAllUsedIn:return:!combining!public! !
!UnusedOptional categoriesFor: #with:whenAnyUsedReturn:!combining!public! !
!UnusedOptional categoriesFor: #with:whenBothUsedReturn:!combining!public! !
!UnusedOptional categoriesFor: #withContentDo:ifUnused:!accessing!public! !
!UnusedOptional categoriesFor: #withUsedOnlyIn:return:!combining!public! !

!UnusedOptional class methodsFor!

explainedByAll: anExplanationCollection
!UnusedOptional class categoriesFor: #explainedByAll:!instance creation!public! !
