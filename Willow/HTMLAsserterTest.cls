"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HTMLAsserterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTMLAsserterTest guid: (GUID fromString: '{fa98b60c-6ebf-4982-b8fb-69e0394744b4}')!
HTMLAsserterTest comment: 'A HTMLAsserterTest is a test class for testing the behavior of HTMLAsserter'!
!HTMLAsserterTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!HTMLAsserterTest methodsFor!

testAssertingEmptyString	self		should: [ HTMLAsserter new assertIsValidIdentifier: '' ]		raise: AssertionFailed		withMessageText: 'An id attribute can''t be empty'!

testAssertingInvalidString	self		should: [ HTMLAsserter new assertIsValidIdentifier: '1/aaa' ]		raise: AssertionFailed		withMessageText: 'An id attribute must begin with a letter. The id contains an unsafe character'!

testAssertingStringStartingWithSafeCharacterButNotALetter	self		should: [ HTMLAsserter new assertIsValidIdentifier: '1id' ]		raise: AssertionFailed		withMessageText: 'An id attribute must begin with a letter'!

testAssertIsValidIdentifier	self shouldnt: [ HTMLAsserter new assertIsValidIdentifier: 'id-1_more.1.0' ] raise: AssertionFailed! !
!HTMLAsserterTest categoriesFor: #testAssertingEmptyString!public!tests! !
!HTMLAsserterTest categoriesFor: #testAssertingInvalidString!public!tests! !
!HTMLAsserterTest categoriesFor: #testAssertingStringStartingWithSafeCharacterButNotALetter!public!tests! !
!HTMLAsserterTest categoriesFor: #testAssertIsValidIdentifier!public!tests/Asserting! !

