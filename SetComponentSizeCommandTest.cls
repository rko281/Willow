"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #SetComponentSizeCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentSizeCommandTest guid: (GUID fromString: '{7496768c-39d4-4f99-94ef-0e108a6783bb}')!
SetComponentSizeCommandTest comment: ''!
!SetComponentSizeCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetComponentSizeCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (SetComponentSizeCommand setting: 5) toComponentDefinedBy: [ :canvas | canvas select ].	self assert: html equals: '<select size="5"></select>'! !
!SetComponentSizeCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

