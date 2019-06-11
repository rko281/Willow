"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #DisableComponentTabCycleCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DisableComponentTabCycleCommandTest guid: (GUID fromString: '{6275ca74-9548-47db-8ac6-f4c2168ebcca}')!
DisableComponentTabCycleCommandTest comment: 'A DisableComponentTabCycleCommandTest is a test class for testing the behavior of DisableComponentTabCycleCommand'!
!DisableComponentTabCycleCommandTest categoriesForClass!Willow-Tests-Frontend! !
!DisableComponentTabCycleCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: DisableComponentTabCycleCommand new toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div tabindex="-1"></div>'! !
!DisableComponentTabCycleCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

