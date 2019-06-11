"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SetComponentStyleCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentStyleCommandTest guid: (GUID fromString: '{6aa45f02-e6a1-49c9-a1fa-3a050845a6bf}')!
SetComponentStyleCommandTest comment: 'A SetComponentStyleCommandTest is a test class for testing the behavior of SetComponentStyleCommand'!
!SetComponentStyleCommandTest categoriesForClass!Willow-Tests-Frontend! !
!SetComponentStyleCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply:			(SetComponentStyleCommand				setting:					(CssDeclarationBlock new						background: 'blue';						yourself))		toComponentDefinedBy: [ :canvas | canvas div ].	self		assert: html		equals: '<div style="background: blue;"></div>'! !
!SetComponentStyleCommandTest categoriesFor: #testApplyToOn!public!tests/initialization! !

