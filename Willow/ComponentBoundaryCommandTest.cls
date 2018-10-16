"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentBoundaryCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentBoundaryCommandTest guid: (GUID fromString: '{214d16c0-0ee3-4d3b-b94e-3137e0abb2cb}')!
ComponentBoundaryCommandTest comment: 'A ComponentBoundaryCommandTest is a test class for testing the behavior of ComponentBoundaryCommand'!
!ComponentBoundaryCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentBoundaryCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentBoundaryCommand between: 15 and: 20) toComponentDefinedBy: [ :canvas | canvas numberInput ].	self assert: html equals: '<input min="15" max="20" type="number"/>'!

testNonNegative	| html |	html := self apply: ComponentBoundaryCommand nonNegative toComponentDefinedBy: [ :canvas | canvas numberInput ].	self assert: html equals: '<input min="0" type="number"/>'! !
!ComponentBoundaryCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !
!ComponentBoundaryCommandTest categoriesFor: #testNonNegative!public!tests/processing! !

