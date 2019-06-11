"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SetRowSpanCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetRowSpanCommandTest guid: (GUID fromString: '{8bf469c6-216e-4f61-8657-2d7f7692ff2f}')!
SetRowSpanCommandTest comment: 'A SetRowSpanCommandTest is a test class for testing the behavior of SetRowSpanCommand'!
!SetRowSpanCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetRowSpanCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (SetRowSpanCommand setting: 3) toComponentDefinedBy: [ :canvas | canvas tableData ].	self assert: html equals: '<td rowspan="3"></td>'! !
!SetRowSpanCommandTest categoriesFor: #testApplyToOn!public!tests! !

