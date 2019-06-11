"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentBoundaryCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentBoundaryCommandTest guid: (GUID fromString: '{11f25d39-ca74-45f9-8fe1-b637a577d48e}')!
ComponentBoundaryCommandTest comment: 'A ComponentBoundaryCommandTest is a test class for testing the behavior of ComponentBoundaryCommand'!
!ComponentBoundaryCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentBoundaryCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentBoundaryCommand between: 15 and: 20) toComponentDefinedBy: [ :canvas | canvas numberInput ].	self assert: html equals: '<input min="15" max="20" type="number"/>'!

testNonNegative	| html |	html := self apply: ComponentBoundaryCommand nonNegative toComponentDefinedBy: [ :canvas | canvas numberInput ].	self assert: html equals: '<input min="0" type="number"/>'! !
!ComponentBoundaryCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !
!ComponentBoundaryCommandTest categoriesFor: #testNonNegative!public!tests/processing! !

