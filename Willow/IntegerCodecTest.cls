"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #IntegerCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IntegerCodecTest guid: (GUID fromString: '{82ae0fb1-0a7a-4648-9f44-cabfb26afb34}')!
IntegerCodecTest comment: 'An IntegerCodecTest is a test class for testing the behavior of IntegerCodec'!
!IntegerCodecTest categoriesForClass!Willow-Tests-Frontend! !
!IntegerCodecTest methodsFor!

testCanCreate	self		assert: (IntegerCodec new canCreate: 0);		assert: (IntegerCodec new canCreate: SmallInteger maxVal + 1);		deny: (IntegerCodec new canCreate: '9');		deny: (IntegerCodec new canCreate: 1.0);		deny: (IntegerCodec new canCreate: 1 / 2)!

testDecode	self		assert: (IntegerCodec new decode: '0') equals: 0;		assert: (IntegerCodec new decode: '-1') equals: -1;		assert: (IntegerCodec new decode: '99') equals: 99;		assert: (IntegerCodec new decode: 'frula') equals: 0!

testEncode	self		assert: (IntegerCodec new encode: 0) equals: '0';		assert: (IntegerCodec new encode: -1) equals: '-1';		assert: (IntegerCodec new encode: 99) equals: '99'! !
!IntegerCodecTest categoriesFor: #testCanCreate!public!tests! !
!IntegerCodecTest categoriesFor: #testDecode!public!tests! !
!IntegerCodecTest categoriesFor: #testEncode!public!tests! !

