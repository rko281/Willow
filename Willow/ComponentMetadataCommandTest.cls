"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentMetadataCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentMetadataCommandTest guid: (GUID fromString: '{c638e6d0-8fa0-45a1-aa29-fafb5a87f606}')!
ComponentMetadataCommandTest comment: 'A ComponentMetadataCommandTest is a test class for testing the behavior of ComponentMetadataCommand'!
!ComponentMetadataCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentMetadataCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentMetadataCommand toDeclare: 'content' with: 15) toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input data-content="15" type="text"/>'! !
!ComponentMetadataCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

