"Filed out from Dolphin Smalltalk 7"!

Optional subclass: #UnusedOptional
	instanceVariableNames: 'explanations'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnusedOptional guid: (GUID fromString: '{4e917bf7-7297-4a02-9950-8bc2eaef579f}')!
UnusedOptional comment: 'I''m an optional representing the missing objects. I provide a list of explanations to aid the users.'!
!UnusedOptional categoriesForClass!Buoy-Dynamic-Binding! !
!UnusedOptional methodsFor!

equalsTo: anObject	^ anObject		withContentDo: [ :anotherContent | false ]		ifUnused: [ :anotherExplanations | explanations = anotherExplanations ]!

initializeExplainedByAll: anExplanationCollection	explanations := anExplanationCollection!

printOn: aStream	explanations		do: [ :explanation | aStream nextPutAll: explanation ]		separatedBy: [ aStream				nextPut: $.;				space ]!

return: aMonadycBlock	^ self!

whenAllUsedIn: optionals return: aMonadycBlock	^ self whenAllUsedIn: optionals injectInto: [ :x :y |  ]!

with: anOptional whenAnyUsedReturn: aBlockClosure	^ anOptional		withContentDo: [ :foreignContent | anOptional ]		ifUnused: [ :foreignExplanations | self class explainedByAll: explanations , foreignExplanations ]!

with: anOptional whenBothUsedReturn: aBlockClosure	^ anOptional		withContentDo: [ :foreignContent | self ]		ifUnused: [ :foreignExplanations | self class explainedByAll: explanations , foreignExplanations ]!

withContentDo: aBlockClosure ifUnused: aNothingBlock 		^aNothingBlock cull: explanations !

withUsedOnlyIn: optionals return: aMonadycBlock	^ self withUsedOnlyIn: optionals injectInto: [ :x :y |  ]! !
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

explainedByAll: anExplanationCollection	^ self new initializeExplainedByAll: anExplanationCollection! !
!UnusedOptional class categoriesFor: #explainedByAll:!instance creation!public! !

