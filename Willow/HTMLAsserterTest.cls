"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HTMLAsserterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTMLAsserterTest guid: (GUID fromString: '{9d661f83-2487-417c-bcf3-ece31e4c469f}')!
HTMLAsserterTest comment: 'A HTMLAsserterTest is a test class for testing the behavior of HTMLAsserter'!
!HTMLAsserterTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!HTMLAsserterTest methodsFor!

testAssertingEmptyString	self		should: [ HTMLAsserter new assertIsValidIdentifier: '' ]		raise: AssertionFailed		withExceptionDo: [ :exception | self assert: exception messageText equals: 'An id attribute can''t be empty' ]!

testAssertingInvalidString	self		should: [ HTMLAsserter new assertIsValidIdentifier: '1/aaa' ]		raise: AssertionFailed		withExceptionDo:			[ :exception | self assert: exception messageText equals: 'An id attribute must begin with a letter. The id contains an unsafe character' ]!

testAssertingStringStartingWithSafeCharacterButNotALetter	self		should: [ HTMLAsserter new assertIsValidIdentifier: '1id' ]		raise: AssertionFailed		withExceptionDo:			[ :exception | self assert: exception messageText equals: 'An id attribute must begin with a letter' ]!

testAssertIsValidIdentifier	self shouldnt: [ HTMLAsserter new assertIsValidIdentifier: 'id-1_more.1.0' ] raise: AssertionFailed! !
!HTMLAsserterTest categoriesFor: #testAssertingEmptyString!public!tests! !
!HTMLAsserterTest categoriesFor: #testAssertingInvalidString!public!tests! !
!HTMLAsserterTest categoriesFor: #testAssertingStringStartingWithSafeCharacterButNotALetter!public!tests! !
!HTMLAsserterTest categoriesFor: #testAssertIsValidIdentifier!public!tests/Asserting! !

