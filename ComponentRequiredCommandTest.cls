"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentRequiredCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentRequiredCommandTest guid: (GUID fromString: '{b9584634-a299-44ed-b2ec-1bfbfe560443}')!
ComponentRequiredCommandTest comment: ''!
!ComponentRequiredCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentRequiredCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: ComponentRequiredCommand new toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input required="required" type="text"/>'! !
!ComponentRequiredCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

