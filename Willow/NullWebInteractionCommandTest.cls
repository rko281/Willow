"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #NullWebInteractionCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NullWebInteractionCommandTest guid: (GUID fromString: '{e6eabeef-1b26-4328-b2f4-3000f9702944}')!
NullWebInteractionCommandTest comment: 'A NullWebInteractionCommandTest is a test class for testing the behavior of NullWebInteractionCommand'!
!NullWebInteractionCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!NullWebInteractionCommandTest methodsFor!

testClientIndependentActions	self assert: NullWebInteractionCommand new clientIndependentActions isEmpty!

testModelLoadingActions	self assert: NullWebInteractionCommand new modelLoadingActions isEmpty!

testPriorityActions	self assert: NullWebInteractionCommand new priorityActions isEmpty!

testRequiresSerialization	self deny: NullWebInteractionCommand new requiresSerialization!

testServerIndependentActions	self assert: NullWebInteractionCommand new serverIndependentActions isEmpty! !
!NullWebInteractionCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!NullWebInteractionCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!NullWebInteractionCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!NullWebInteractionCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!NullWebInteractionCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

