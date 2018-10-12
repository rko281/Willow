"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentPlaceholderCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentPlaceholderCommandTest guid: (GUID fromString: '{5f18d45a-d16e-4741-9c43-c78a62dcbcec}')!
ComponentPlaceholderCommandTest comment: 'A ComponentPlaceholderCommandTest is a test class for testing the behavior of ComponentPlaceholderCommand'!
!ComponentPlaceholderCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentPlaceholderCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentPlaceholderCommand suggestedBy: 'user') toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input placeholder="user" type="text"/>'! !
!ComponentPlaceholderCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

