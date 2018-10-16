"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #SetRowSpanCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetRowSpanCommandTest guid: (GUID fromString: '{6b6dfc6d-0c95-4b67-9ade-2cbc8b0a03bd}')!
SetRowSpanCommandTest comment: 'A SetRowSpanCommandTest is a test class for testing the behavior of SetRowSpanCommand'!
!SetRowSpanCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetRowSpanCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (SetRowSpanCommand setting: 3) toComponentDefinedBy: [ :canvas | canvas tableData ].	self assert: html equals: '<td rowspan="3"></td>'! !
!SetRowSpanCommandTest categoriesFor: #testApplyToOn!public!tests! !

