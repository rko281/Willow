"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #InputFieldMaxLengthCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
InputFieldMaxLengthCommandTest guid: (GUID fromString: '{01115a27-c2cf-4ae9-8f0e-267cbe1d6ed2}')!
InputFieldMaxLengthCommandTest comment: 'An InputFieldMaxLengthCommandTest is a test class for testing the behavior of InputFieldMaxLengthCommand'!
!InputFieldMaxLengthCommandTest categoriesForClass!Willow-Tests-Frontend! !
!InputFieldMaxLengthCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (InputFieldMaxLengthCommand allowingUpTo: 25) toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input maxlength="25" type="text"/>'! !
!InputFieldMaxLengthCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

