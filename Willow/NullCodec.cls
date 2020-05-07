"Filed out from Dolphin Smalltalk 7"!

Codec subclass: #NullCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NullCodec guid: (GUID fromString: '{016fb564-8b38-454b-b5cf-894c66717867}')!
NullCodec comment: 'I''m a null encoder/decoder'!
!NullCodec categoriesForClass!Willow-Core-Frontend! !
!NullCodec methodsFor!

canCreate: anObject	^anObject isString!

decode: aString	^aString!

encode: aString	^aString! !
!NullCodec categoriesFor: #canCreate:!public!testing! !
!NullCodec categoriesFor: #decode:!converting!public! !
!NullCodec categoriesFor: #encode:!converting!public! !

