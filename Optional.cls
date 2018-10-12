"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Optional
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Optional guid: (GUID fromString: '{b0e744eb-7df3-46cc-b12a-602596f8fa6c}')!
Optional comment: 'I''m an abstract  class representing the fact that some object can be optional.  I provide protocol to be combined with other optionals.'!
!Optional categoriesForClass!Buoy-Dynamic-Binding! !
!Optional methodsFor!

= anObject	^ self value == anObject		or: [ (anObject isA: self class) and: [ self equalsTo: anObject ] ]!

equalsTo: anObject	^ self subclassResponsibility!

hash	^ self		withContentDo: [ :content | content hash ]		ifUnused: [ :explanations | explanations hash ]!

return: aMonadycBlock	self subclassResponsibility !

whenAllUsedIn: optionals injectInto: aDyadicBlock	^ optionals inject: self into: [ :combinedOptional :currentOptional | combinedOptional with: currentOptional whenBothUsedReturn: aDyadicBlock ]!

whenAllUsedIn: optionals return: aMonadycBlock	self subclassResponsibility !

with: anOptional whenAnyUsedReturn: aDyadicBlock	self subclassResponsibility !

with: anOptional whenBothUsedReturn: aDyadicBlock	self subclassResponsibility !

withContentDo: aMonadycBlock	self withContentDo: aMonadycBlock ifUnused: [  ]!

withContentDo: aMonadycBlock ifUnused: aNothingBlock	self subclassResponsibility !

withUsedOnlyIn: optionals injectInto: aDyadicBlock	^ optionals		inject: self		into:			[ :combinedOptional :currentOptional | combinedOptional with: currentOptional whenAnyUsedReturn: aDyadicBlock ]!

withUsedOnlyIn: optionals return: aMonadycBlock	self subclassResponsibility ! !
!Optional categoriesFor: #=!comparing!public! !
!Optional categoriesFor: #equalsTo:!private! !
!Optional categoriesFor: #hash!comparing!public! !
!Optional categoriesFor: #return:!combining!public! !
!Optional categoriesFor: #whenAllUsedIn:injectInto:!combining!public! !
!Optional categoriesFor: #whenAllUsedIn:return:!combining!public! !
!Optional categoriesFor: #with:whenAnyUsedReturn:!combining!public! !
!Optional categoriesFor: #with:whenBothUsedReturn:!combining!public! !
!Optional categoriesFor: #withContentDo:!accessing!public! !
!Optional categoriesFor: #withContentDo:ifUnused:!accessing!public! !
!Optional categoriesFor: #withUsedOnlyIn:injectInto:!combining!public! !
!Optional categoriesFor: #withUsedOnlyIn:return:!combining!public! !

!Optional class methodsFor!

containing: anObject	^UsedOptional containing: anObject !

unused	^self unusedBecauseAll: #()!

unusedBecause: anExplanation	^self unusedBecauseAll: { anExplanation }!

unusedBecauseAll: anExplanationCollection 		^UnusedOptional explainedByAll: anExplanationCollection !

whenAllUsedIn: optionals injectInto: aDyadicBlock	^ optionals ifNotEmpty: [ optionals first whenAllUsedIn: optionals allButFirst injectInto: aDyadicBlock ] ifEmpty: [ self unused ]!

whenAllUsedIn: optionals return: aMonadycBlock	^ optionals ifNotEmpty: [ optionals first whenAllUsedIn: optionals allButFirst return: aMonadycBlock ] ifEmpty: [ self unused ]!

withUsedOnlyIn: optionals injectInto: aDyadicBlock	^ optionals		ifNotEmpty: [ optionals first withUsedOnlyIn: optionals allButFirst injectInto: aDyadicBlock ]		ifEmpty: [ self unused ]!

withUsedOnlyIn: optionals return: aMonadycBlock	^ optionals		ifNotEmpty: [ optionals first withUsedOnlyIn: optionals allButFirst return: aMonadycBlock ]		ifEmpty: [ self unused ]! !
!Optional class categoriesFor: #containing:!instance creation!public! !
!Optional class categoriesFor: #unused!instance creation!public! !
!Optional class categoriesFor: #unusedBecause:!instance creation!public! !
!Optional class categoriesFor: #unusedBecauseAll:!instance creation!public! !
!Optional class categoriesFor: #whenAllUsedIn:injectInto:!instance creation!public! !
!Optional class categoriesFor: #whenAllUsedIn:return:!instance creation!public! !
!Optional class categoriesFor: #withUsedOnlyIn:injectInto:!instance creation!public! !
!Optional class categoriesFor: #withUsedOnlyIn:return:!instance creation!public! !

