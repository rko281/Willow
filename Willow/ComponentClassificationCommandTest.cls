"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentClassificationCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentClassificationCommandTest guid: (GUID fromString: '{be364152-2102-41a1-9dbd-b53048a0102e}')!
ComponentClassificationCommandTest comment: 'A ComponentClassificationCommandTest is a test class for testing the behavior of ComponentClassificationCommand'!
!ComponentClassificationCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentClassificationCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentClassificationCommand toStyleWith: 'ui') toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="ui"></div>'! !
!ComponentClassificationCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

