"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentReadOnlyCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentReadOnlyCommandTest guid: (GUID fromString: '{49d2a209-54a9-43fd-823f-238dcd15ea56}')!
ComponentReadOnlyCommandTest comment: 'A ComponentReadOnlyCommandTest is a test class for testing the behavior of ComponentReadOnlyCommand'!
!ComponentReadOnlyCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentReadOnlyCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: ComponentReadOnlyCommand new		toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input readonly type="text"/>'! !
!ComponentReadOnlyCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

