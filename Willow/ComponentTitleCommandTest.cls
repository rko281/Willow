"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentTitleCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentTitleCommandTest guid: (GUID fromString: '{ec7bfde3-9b32-404e-a576-08ea33a3694c}')!
ComponentTitleCommandTest comment: 'A ComponentTitleCommandTest is a test class for testing the behavior of ComponentTitleCommand'!
!ComponentTitleCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentTitleCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentTitleCommand toSet: 'image') toComponentDefinedBy: [ :canvas | canvas image ].	self assert: html equals: '<img alt="" title="image"/>'! !
!ComponentTitleCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

