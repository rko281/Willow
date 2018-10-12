"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #DeselectAllOptionsCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DeselectAllOptionsCommandTest guid: (GUID fromString: '{afa96aa5-6b29-45b6-a160-d943652f4e04}')!
DeselectAllOptionsCommandTest comment: 'A DeselectAllOptionsCommandTest is a test class for testing the behavior of DeselectAllOptionsCommand'!
!DeselectAllOptionsCommandTest categoriesForClass!Willow-Tests-Frontend! !
!DeselectAllOptionsCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: DeselectAllOptionsCommand new toComponentDefinedBy: [ :canvas | canvas select ].	self assert: html equals: '<select id="id1"></select><script type="text/javascript">$("#id1").prop("selectedIndex",-1);</script>'! !
!DeselectAllOptionsCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

