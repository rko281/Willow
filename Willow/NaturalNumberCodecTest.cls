"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #NaturalNumberCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NaturalNumberCodecTest guid: (GUID fromString: '{5f96489e-ca72-4382-8d11-72db5f419d72}')!
NaturalNumberCodecTest comment: 'A NaturalNumberCodecTest is a test class for testing the behavior of NaturalNumberCodec'!
!NaturalNumberCodecTest categoriesForClass!Willow-Tests-Frontend! !
!NaturalNumberCodecTest methodsFor!

testCanCreate	self		assert: (NaturalNumberCodec new canCreate: 0);		assert: (NaturalNumberCodec new canCreate: 99);		deny: (NaturalNumberCodec new canCreate: -1);		deny: (NaturalNumberCodec new canCreate: 1.0);		deny: (NaturalNumberCodec new canCreate: 1 / 2)!

testDecode	self		assert: (NaturalNumberCodec new decode: '0') equals: 0;		assert: (NaturalNumberCodec new decode: '99') equals: 99.	self		should: [ NaturalNumberCodec new decode: '-1' ] raise: InstanceCreationFailed;		should: [ NaturalNumberCodec new decode: 'frula' ] raise: InstanceCreationFailed!

testEncode	self		assert: (NaturalNumberCodec new encode: 0) equals: '0';		assert: (NaturalNumberCodec new encode: 99) equals: '99'! !
!NaturalNumberCodecTest categoriesFor: #testCanCreate!public!tests/converting! !
!NaturalNumberCodecTest categoriesFor: #testDecode!public!tests/converting! !
!NaturalNumberCodecTest categoriesFor: #testEncode!public!tests/converting! !

