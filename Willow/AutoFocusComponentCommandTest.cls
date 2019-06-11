"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #AutoFocusComponentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AutoFocusComponentCommandTest guid: (GUID fromString: '{c001ad83-bb95-4973-a7df-b01ba9a5b480}')!
AutoFocusComponentCommandTest comment: ''!
!AutoFocusComponentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!AutoFocusComponentCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: AutoFocusComponentCommand new toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div autofocus></div>'! !
!AutoFocusComponentCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

