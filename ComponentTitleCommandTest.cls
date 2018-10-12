"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentTitleCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentTitleCommandTest guid: (GUID fromString: '{92298510-b68f-4079-a204-54eb24e99c90}')!
ComponentTitleCommandTest comment: 'A ComponentTitleCommandTest is a test class for testing the behavior of ComponentTitleCommand'!
!ComponentTitleCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentTitleCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: (ComponentTitleCommand toSet: 'image') toComponentDefinedBy: [ :canvas | canvas image ].	self assert: html equals: '<img alt="" title="image"/>'! !
!ComponentTitleCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

