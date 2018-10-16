"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #SetColumnSpanCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetColumnSpanCommandTest guid: (GUID fromString: '{4e2935d1-e0ad-4a5d-b2af-78e81cb0525e}')!
SetColumnSpanCommandTest comment: ''!
!SetColumnSpanCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetColumnSpanCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (SetColumnSpanCommand setting: 3)		toComponentDefinedBy: [ :canvas | canvas tableData ].	self assert: html equals: '<td colspan="3"></td>'! !
!SetColumnSpanCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

