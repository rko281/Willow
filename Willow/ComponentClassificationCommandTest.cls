"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentClassificationCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentClassificationCommandTest guid: (GUID fromString: '{8fb398fe-cccf-4d4c-b581-dd4c57ffbe5b}')!
ComponentClassificationCommandTest comment: 'A ComponentClassificationCommandTest is a test class for testing the behavior of ComponentClassificationCommand'!
!ComponentClassificationCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentClassificationCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentClassificationCommand toStyleWith: 'ui') toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div class="ui"></div>'! !
!ComponentClassificationCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

