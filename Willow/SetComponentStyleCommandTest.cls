"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #SetComponentStyleCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentStyleCommandTest guid: (GUID fromString: '{45e0cdb1-062f-4d36-9027-6f35942b271d}')!
SetComponentStyleCommandTest comment: 'A SetComponentStyleCommandTest is a test class for testing the behavior of SetComponentStyleCommand'!
!SetComponentStyleCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetComponentStyleCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply:			(SetComponentStyleCommand				setting:					(CssDeclarationBlock new						background: 'blue';						yourself))		toComponentDefinedBy: [ :canvas | canvas div ].	self		assert: html		equals: '<div style="background: blue;"></div>'! !
!SetComponentStyleCommandTest categoriesFor: #testApplyToOn!public!tests/initialization! !

