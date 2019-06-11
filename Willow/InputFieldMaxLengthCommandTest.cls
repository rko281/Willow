"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #InputFieldMaxLengthCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
InputFieldMaxLengthCommandTest guid: (GUID fromString: '{2a81745e-abcb-4403-aa24-e236bf34f233}')!
InputFieldMaxLengthCommandTest comment: 'An InputFieldMaxLengthCommandTest is a test class for testing the behavior of InputFieldMaxLengthCommand'!
!InputFieldMaxLengthCommandTest categoriesForClass!Willow-Tests-Frontend! !
!InputFieldMaxLengthCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (InputFieldMaxLengthCommand allowingUpTo: 25) toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input maxlength="25" type="text"/>'! !
!InputFieldMaxLengthCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

