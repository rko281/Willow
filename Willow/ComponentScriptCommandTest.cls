"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentScriptCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentScriptCommandTest guid: (GUID fromString: '{b1313c3b-b3e8-4251-bd15-daf2b60a3601}')!
ComponentScriptCommandTest comment: 'A ComponentScriptCommandTest is a test class for testing the behavior of ComponentScriptCommand'!
!ComponentScriptCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentScriptCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (ComponentScriptCommand toExecute: [ :canvas | canvas jQuery this clone ])		toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input id="id1" type="text"/><script type="text/javascript">$("#id1").clone();</script>'! !
!ComponentScriptCommandTest categoriesFor: #testApplyToOn!public!tests/applying! !

