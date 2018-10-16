"Filed out from Dolphin Smalltalk 7"!

Codec subclass: #NaturalNumberCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NaturalNumberCodec guid: (GUID fromString: '{b6245dfe-ea77-46e7-9adf-587c8f0f382e}')!
NaturalNumberCodec comment: 'I''m an encoder/decoder of natural numbers'!
!NaturalNumberCodec categoriesForClass!Willow-Frontend! !
!NaturalNumberCodec methodsFor!

canCreate: anObject	^anObject isInteger and: [anObject positive]!

decode: aString	| number |	number := Integer readFrom: aString ifFail: [ InstanceCreationFailed signal: ('<1s> is not a natural number' expandMacrosWith: aString) ].	AssertionChecker enforce: [ number positive ] because: [ '<1s> is not a natural number' expandMacrosWith: aString ] raising: InstanceCreationFailed.	^ number!

encode: aNaturalNumber	^aNaturalNumber greaseString! !
!NaturalNumberCodec categoriesFor: #canCreate:!public!testing! !
!NaturalNumberCodec categoriesFor: #decode:!converting!public! !
!NaturalNumberCodec categoriesFor: #encode:!converting!public! !

