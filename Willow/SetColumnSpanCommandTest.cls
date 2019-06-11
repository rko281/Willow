"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SetColumnSpanCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetColumnSpanCommandTest guid: (GUID fromString: '{eb934e14-908e-4be1-9b0b-0728855d94eb}')!
SetColumnSpanCommandTest comment: ''!
!SetColumnSpanCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetColumnSpanCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (SetColumnSpanCommand setting: 3)		toComponentDefinedBy: [ :canvas | canvas tableData ].	self assert: html equals: '<td colspan="3"></td>'! !
!SetColumnSpanCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

