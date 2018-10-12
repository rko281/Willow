"Filed out from Dolphin Smalltalk 7"!

Object subclass: #HTMLAsserter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTMLAsserter guid: (GUID fromString: '{1ccb47ba-17bc-4aff-9be5-7ef206611c28}')!
HTMLAsserter comment: 'I have the responsibility to provide assertions for HTML related aspects.'!
!HTMLAsserter categoriesForClass!Boardwalk-WebApplication! !
!HTMLAsserter methodsFor!

assertIsValidIdentifier: candidate	"http://stackoverflow.com/questions/70579/what-are-valid-values-for-the-id-attribute-in-html		ID and NAME tokens must begin with a letter [A-Za-z] and may be followed by any number of letters, digits [0-9], hyphens -, underscores _, colons :, and periods ."	AssertionCheckerBuilder new		checking: [ :asserter | 			asserter				enforce: [ candidate notEmpty ]					because: 'An id attribute can''t be empty'					onSuccess: [ :successAsserter | successAsserter enforce: [ candidate first isLetter ] because: 'An id attribute must begin with a letter' ];				enforce: [ candidate allSatisfy: [ :character | character isSafeForHTTP ] ] because: 'The id contains an unsafe character' ];		buildAndCheck! !
!HTMLAsserter categoriesFor: #assertIsValidIdentifier:!Asserting!public! !

