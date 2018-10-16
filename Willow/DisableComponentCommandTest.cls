"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #DisableComponentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DisableComponentCommandTest guid: (GUID fromString: '{9e31bb91-2d1d-4105-9691-68c32f263975}')!
DisableComponentCommandTest comment: 'A DisableComponentCommandTest is a test class for testing the behavior of DisableComponentCommand'!
!DisableComponentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!DisableComponentCommandTest methodsFor!

testApplyToOn|html|html := self apply: DisableComponentCommand new toComponentDefinedBy: [ :canvas | canvas div ].self assert: html equals: '<div disabled="disabled"></div>'! !
!DisableComponentCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

