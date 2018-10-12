"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentAttributeCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentAttributeCommandTest guid: (GUID fromString: '{36fd0cc5-178d-4725-b16e-56a28b715f6b}')!
ComponentAttributeCommandTest comment: ''!
!ComponentAttributeCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentAttributeCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentAttributeCommand named: 'rows' with: 5) toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div rows="5"></div>'! !
!ComponentAttributeCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

