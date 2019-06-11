"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SetComponentTabIndexCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentTabIndexCommandTest guid: (GUID fromString: '{252657c7-cc57-469a-b679-6ab1d8d0dbab}')!
SetComponentTabIndexCommandTest comment: ''!
!SetComponentTabIndexCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetComponentTabIndexCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (SetComponentTabIndexCommand setting: 3) toComponentDefinedBy: [ :canvas | canvas select ].	self assert: html equals: '<select tabindex="3"></select>'! !
!SetComponentTabIndexCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

