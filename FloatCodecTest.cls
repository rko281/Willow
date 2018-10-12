"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #FloatCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FloatCodecTest guid: (GUID fromString: '{eef96708-02cc-4879-8c03-53f1eea78ee8}')!
FloatCodecTest comment: 'A FloatCodecTest is a test class for testing the behavior of FloatCodec'!
!FloatCodecTest categoriesForClass!Willow-Tests-Frontend! !
!FloatCodecTest methodsFor!

testDecode	self		assert: (FloatCodec new decode: '0.0') equals: 0.0;		assert: (FloatCodec new decode: '-1.0') equals: -1.0;		assert: (FloatCodec new decode: '99') equals: 99.0;		assert: (FloatCodec new decode: '0.01') equals: 0.01;		should: [FloatCodec new decode: 'xxx0.01'] raise: InstanceCreationFailed!

testEncode	self		assert: (FloatCodec new encode: 0) equals: '0.0';		assert: (FloatCodec new encode: -1) equals: '-1.0';		assert: (FloatCodec new encode: 99) equals: '99.0';		assert: (FloatCodec new encode: 0.01) equals: '0.01';		assert: (FloatCodec new encode: -1.365) equals: '-1.365'!

testEncodingDecoding	| codec |	codec := FloatCodec new.	self		assert: (codec canCreate: 232 / 100);		assert: (codec canCreate: 2.32)! !
!FloatCodecTest categoriesFor: #testDecode!public!tests! !
!FloatCodecTest categoriesFor: #testEncode!public!tests! !
!FloatCodecTest categoriesFor: #testEncodingDecoding!public!tests! !

