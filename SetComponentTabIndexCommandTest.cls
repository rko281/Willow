"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #SetComponentTabIndexCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentTabIndexCommandTest guid: (GUID fromString: '{f7cbc82c-e084-45c7-82d9-7916e81cda31}')!
SetComponentTabIndexCommandTest comment: ''!
!SetComponentTabIndexCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetComponentTabIndexCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (SetComponentTabIndexCommand setting: 3) toComponentDefinedBy: [ :canvas | canvas select ].	self assert: html equals: '<select tabindex="3"></select>'! !
!SetComponentTabIndexCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

