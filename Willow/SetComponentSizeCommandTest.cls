"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SetComponentSizeCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentSizeCommandTest guid: (GUID fromString: '{11a41588-350c-4218-909b-78e2f7a3edde}')!
SetComponentSizeCommandTest comment: ''!
!SetComponentSizeCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetComponentSizeCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (SetComponentSizeCommand setting: 5) toComponentDefinedBy: [ :canvas | canvas select ].	self assert: html equals: '<select size="5"></select>'! !
!SetComponentSizeCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

