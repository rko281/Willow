"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentAttributeCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentAttributeCommandTest guid: (GUID fromString: '{2f342e88-000f-4df5-9ef7-2666caea9d93}')!
ComponentAttributeCommandTest comment: ''!
!ComponentAttributeCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentAttributeCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentAttributeCommand named: 'rows' with: 5) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div rows="5"></div>'! !
!ComponentAttributeCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

