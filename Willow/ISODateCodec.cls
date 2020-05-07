"Filed out from Dolphin Smalltalk 7"!

Codec subclass: #ISODateCodec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ISODateCodec guid: (GUID fromString: '{cb4f8f8e-da5c-4c76-8602-96e04a45f535}')!
ISODateCodec comment: 'I''m an encoder/decoder of Dates'!
!ISODateCodec categoriesForClass!Willow-Core-Frontend! !
!ISODateCodec methodsFor!

canCreate: anObject	^anObject isA: Date!

decode: aString	^ [ Date readFrom: aString pattern: 'yyyy-mm-dd' ]		on: DateError		do: [ :error | InstanceCreationFailed signal: error messageText ]!

encode: aDate	^ GRPrinter isoDate print: aDate! !
!ISODateCodec categoriesFor: #canCreate:!public!testing! !
!ISODateCodec categoriesFor: #decode:!converting!public! !
!ISODateCodec categoriesFor: #encode:!converting!public! !

