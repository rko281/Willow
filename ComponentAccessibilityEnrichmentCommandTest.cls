"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentAccessibilityEnrichmentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentAccessibilityEnrichmentCommandTest guid: (GUID fromString: '{e857793e-e701-4629-ab62-199f50be31ac}')!
ComponentAccessibilityEnrichmentCommandTest comment: 'A ComponentAccessibilityEnrichmentCommandTest is a test class for testing the behavior of ComponentAccessibilityEnrichmentCommand'!
!ComponentAccessibilityEnrichmentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentAccessibilityEnrichmentCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentAccessibilityEnrichmentCommand toDeclare: 'describedBy' with: 'helpBlock') toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input aria-describedBy="helpBlock" type="text"/>'! !
!ComponentAccessibilityEnrichmentCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

