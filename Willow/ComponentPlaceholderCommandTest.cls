"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentPlaceholderCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentPlaceholderCommandTest guid: (GUID fromString: '{9ccb5687-ce33-4e76-a6d7-d3f772fb1cb8}')!
ComponentPlaceholderCommandTest comment: 'A ComponentPlaceholderCommandTest is a test class for testing the behavior of ComponentPlaceholderCommand'!
!ComponentPlaceholderCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentPlaceholderCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentPlaceholderCommand suggestedBy: 'user') toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input placeholder="user" type="text"/>'! !
!ComponentPlaceholderCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

