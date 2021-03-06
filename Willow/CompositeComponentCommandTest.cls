﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #CompositeComponentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeComponentCommandTest guid: (GUID fromString: '{9f3b9055-a1a2-424a-9f80-46da806153db}')!
CompositeComponentCommandTest comment: 'A CompositeComponentCommandTest is a test class for testing the behavior of CompositeComponentCommand'!
!CompositeComponentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!CompositeComponentCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply:			(CompositeComponentCommand				applyingAll:					(Array						with: (ComponentAttributeCommand named: 'rows' with: 2)						with: (ComponentAttributeCommand named: 'columns' with: 3)))		toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div rows="2" columns="3"></div>'!

testEmpty	| html |	html := self apply: CompositeComponentCommand empty toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div></div>'!

testShortcutCreation	| html |	html := self		apply: (ComponentAttributeCommand named: 'rows' with: 2) + (ComponentAttributeCommand named: 'columns' with: 3)		toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div rows="2" columns="3"></div>'!

testShortcutCreationWithEmptyCompositeCommand	| command html |	command := CompositeComponentCommand empty + (ComponentAttributeCommand named: 'columns' with: 3).	html := self apply: command toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div columns="3"></div>'! !
!CompositeComponentCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !
!CompositeComponentCommandTest categoriesFor: #testEmpty!public!tests/processing! !
!CompositeComponentCommandTest categoriesFor: #testShortcutCreation!public!tests/processing! !
!CompositeComponentCommandTest categoriesFor: #testShortcutCreationWithEmptyCompositeCommand!public!tests/processing! !

