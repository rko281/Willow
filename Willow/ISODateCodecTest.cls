"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #ISODateCodecTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ISODateCodecTest guid: (GUID fromString: '{5b344d82-9dfd-46f6-a699-d8273aec9a98}')!
ISODateCodecTest comment: 'A ISODateCodecTest is a test class for testing the behavior of ISODateCodec'!
!ISODateCodecTest categoriesForClass!Willow-Tests-Frontend! !
!ISODateCodecTest methodsFor!

testCanCreate	self		assert: (ISODateCodec new canCreate: Date today);		deny: (ISODateCodec new canCreate: Time now);		deny: (ISODateCodec new canCreate: '01/01/2001')!

testCantDecodeDate	self		should: [ ISODateCodec new decode: '2010-13-11' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '2010-13-32' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '2017-02-29' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '1-13-11' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '10-13-11' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '010-13-11' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '2010-13-11' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '2010-1-11' ] raise: InstanceCreationFailed;		should: [ ISODateCodec new decode: '2010-13-1' ] raise: InstanceCreationFailed!

testDecode	self assert: (ISODateCodec new decode: '2010-12-11') equals: (Date newDay: 11 monthIndex: 12 year: 2010)!

testEncode	self assert: (ISODateCodec new encode: (Date newDay: 11 monthIndex: 12 year: 2010)) equals: '2010-12-11'! !
!ISODateCodecTest categoriesFor: #testCanCreate!public!tests! !
!ISODateCodecTest categoriesFor: #testCantDecodeDate!public!tests! !
!ISODateCodecTest categoriesFor: #testDecode!public!tests! !
!ISODateCodecTest categoriesFor: #testEncode!public!tests! !

