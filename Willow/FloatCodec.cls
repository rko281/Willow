"Filed out from Dolphin Smalltalk 7"!

Codec subclass: #FloatCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FloatCodec guid: (GUID fromString: '{2544ea10-2681-476c-8a0b-ca55df248975}')!
FloatCodec comment: 'I''m an encoder/decoder of floats'!
!FloatCodec categoriesForClass!Willow-Core-Frontend! !
!FloatCodec methodsFor!

canCreate: anObject	^anObject isNumber!

decode: aString	| number |	number := Float readFrom: aString ifFail: [ InstanceCreationFailed signal: ('<1s> is not a decimal number' expandMacrosWith: aString) ].	^ number!

encode: aNumber	^ aNumber asFloat greaseString! !
!FloatCodec categoriesFor: #canCreate:!public!testing! !
!FloatCodec categoriesFor: #decode:!converting!public! !
!FloatCodec categoriesFor: #encode:!converting!public! !

