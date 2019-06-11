"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #DeselectAllOptionsCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DeselectAllOptionsCommandTest guid: (GUID fromString: '{7905dec0-d7df-4b30-bd58-3ad4089c04b7}')!
DeselectAllOptionsCommandTest comment: 'A DeselectAllOptionsCommandTest is a test class for testing the behavior of DeselectAllOptionsCommand'!
!DeselectAllOptionsCommandTest categoriesForClass!Willow-Tests-Frontend! !
!DeselectAllOptionsCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: DeselectAllOptionsCommand new toComponentDefinedBy: [ :canvas | canvas select ].	self assert: html equals: '<select id="id1"></select><script type="text/javascript">$("#id1").prop("selectedIndex",-1);</script>'! !
!DeselectAllOptionsCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

