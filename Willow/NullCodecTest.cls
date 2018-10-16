"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #NullCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NullCodecTest guid: (GUID fromString: '{58d23ad0-5269-4347-8dfd-14b144ec643a}')!
NullCodecTest comment: 'An NullCodecTest is a test class for testing the behavior of NullCodec'!
!NullCodecTest categoriesForClass!Willow-Tests-Frontend! !
!NullCodecTest methodsFor!

testCanCreate	self		assert: (NullCodec new canCreate: '0');		assert: (NullCodec new canCreate: 'hello');		deny: (NullCodec new canCreate: 0)!

testDecode	self		assert: (NullCodec new decode: '0') equals: '0';		assert: (NullCodec new decode: 'hello') equals: 'hello'!

testEncode	self		assert: (NullCodec new encode: '0') equals: '0';		assert: (NullCodec new encode: 'hello') equals: 'hello'! !
!NullCodecTest categoriesFor: #testCanCreate!public!tests! !
!NullCodecTest categoriesFor: #testDecode!public!tests! !
!NullCodecTest categoriesFor: #testEncode!public!tests! !

