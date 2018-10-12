"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #DisableComponentTabCycleCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DisableComponentTabCycleCommandTest guid: (GUID fromString: '{b28136e8-525d-4c43-910d-df27e01a9e47}')!
DisableComponentTabCycleCommandTest comment: 'A DisableComponentTabCycleCommandTest is a test class for testing the behavior of DisableComponentTabCycleCommand'!
!DisableComponentTabCycleCommandTest categoriesForClass!Willow-Tests-Frontend! !
!DisableComponentTabCycleCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: DisableComponentTabCycleCommand new toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div tabindex="-1"></div>'! !
!DisableComponentTabCycleCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

