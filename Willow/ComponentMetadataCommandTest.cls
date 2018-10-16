"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentMetadataCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentMetadataCommandTest guid: (GUID fromString: '{8073dccb-43aa-4721-b212-2e81ddeef1e8}')!
ComponentMetadataCommandTest comment: 'A ComponentMetadataCommandTest is a test class for testing the behavior of ComponentMetadataCommand'!
!ComponentMetadataCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentMetadataCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentMetadataCommand toDeclare: 'content' with: 15) toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input data-content="15" type="text"/>'! !
!ComponentMetadataCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

