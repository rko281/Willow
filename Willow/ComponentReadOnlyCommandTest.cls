"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentReadOnlyCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentReadOnlyCommandTest guid: (GUID fromString: '{1fb0fabd-b6f5-4d0f-b065-3c0c77888393}')!
ComponentReadOnlyCommandTest comment: 'A ComponentReadOnlyCommandTest is a test class for testing the behavior of ComponentReadOnlyCommand'!
!ComponentReadOnlyCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentReadOnlyCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: ComponentReadOnlyCommand new toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input readonly="readonly" type="text"/>'! !
!ComponentReadOnlyCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

