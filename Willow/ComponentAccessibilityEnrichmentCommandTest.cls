"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentAccessibilityEnrichmentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentAccessibilityEnrichmentCommandTest guid: (GUID fromString: '{f88c13c8-dae6-44e7-90d5-1f77849d89ac}')!
ComponentAccessibilityEnrichmentCommandTest comment: 'A ComponentAccessibilityEnrichmentCommandTest is a test class for testing the behavior of ComponentAccessibilityEnrichmentCommand'!
!ComponentAccessibilityEnrichmentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentAccessibilityEnrichmentCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentAccessibilityEnrichmentCommand toDeclare: 'describedBy' with: 'helpBlock') toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input aria-describedBy="helpBlock" type="text"/>'! !
!ComponentAccessibilityEnrichmentCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

