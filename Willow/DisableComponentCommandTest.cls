"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #DisableComponentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DisableComponentCommandTest guid: (GUID fromString: '{450abe89-af92-463a-a7ab-1f231719f69c}')!
DisableComponentCommandTest comment: 'A DisableComponentCommandTest is a test class for testing the behavior of DisableComponentCommand'!
!DisableComponentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!DisableComponentCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: DisableComponentCommand new toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div disabled></div>'! !
!DisableComponentCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

