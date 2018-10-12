"Filed out from Dolphin Smalltalk 7"!

Optional subclass: #UsedOptional
	instanceVariableNames: 'content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UsedOptional guid: (GUID fromString: '{cf99fd3e-d537-4e4d-a13c-22033c203ac2}')!
UsedOptional comment: 'I''m an optional containing some object'!
!UsedOptional categoriesForClass!Buoy-Dynamic-Binding! !
!UsedOptional methodsFor!

equalsTo: anObject	^ anObject		withContentDo: [ :anotherContent | content = anotherContent ]		ifUnused: [ false ]!

initializeContaining: anObject	content := anObject !

printOn: aStream	aStream nextPutAll: content asString!

return: aMonadycBlock	^ self class containing: (aMonadycBlock value: content)!

whenAllUsedIn: optionals return: aMonadycBlock	| combined |	combined := (self class containing: (OrderedCollection with: content))		whenAllUsedIn: optionals		injectInto: [ :contents :currentContent | 			contents				add: currentContent;				yourself ].	^ combined withContentDo: [ :contents | self class containing: (aMonadycBlock value: contents) ] ifUnused: [ combined ]!

with: anOptional whenAnyUsedReturn: aDyadicBlock	^ anOptional		withContentDo: [ :foreignContent | self class containing: (aDyadicBlock value: content value: foreignContent) ]		ifUnused: [ self ]!

with: anOptional whenBothUsedReturn: aDyadicBlock	^ anOptional		withContentDo:			[ :foreignContent | self class containing: (aDyadicBlock value: content value: foreignContent) ]		ifUnused: [ anOptional ]!

withContentDo: aBlockClosure ifUnused: aNothingBlock 		^aBlockClosure cull: content !

withUsedOnlyIn: optionals return: aMonadycBlock	| combined |	combined := (self class containing: (OrderedCollection with: content))		withUsedOnlyIn: optionals		injectInto: [ :contents :currentContent | 			contents				add: currentContent;				yourself ].	^ combined withContentDo: [ :contents | self class containing: (aMonadycBlock value: contents) ] ifUnused: [ combined ]! !
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

containing: anObject	^self new initializeContaining: anObject ! !
!UsedOptional class categoriesFor: #containing:!instance creation!public! !

