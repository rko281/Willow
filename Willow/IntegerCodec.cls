"Filed out from Dolphin Smalltalk 7"!

Codec subclass: #IntegerCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IntegerCodec guid: (GUID fromString: '{03e0e686-acbc-47b4-884c-d2ec9a2ff530}')!
IntegerCodec comment: 'I''m an encoder/decoder of integers'!
!IntegerCodec categoriesForClass!Willow-Core-Frontend! !
!IntegerCodec methodsFor!

canCreate: anObject	^anObject isInteger!

decode: aString	^ aString greaseInteger ifNil: [ 0 ]!

encode: anInteger	^ anInteger greaseString! !
!IntegerCodec categoriesFor: #canCreate:!public!testing! !
!IntegerCodec categoriesFor: #decode:!converting!public! !
!IntegerCodec categoriesFor: #encode:!converting!public! !

