"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #AutoFocusComponentCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AutoFocusComponentCommandTest guid: (GUID fromString: '{e804960d-dc44-4485-8b91-e989b882e352}')!
AutoFocusComponentCommandTest comment: ''!
!AutoFocusComponentCommandTest categoriesForClass!Willow-Tests-Frontend! !
!AutoFocusComponentCommandTest methodsFor!

testApplyToOn	| html |	html := self apply: AutoFocusComponentCommand new toComponentDefinedBy: [ :canvas | canvas div ].	self assert: html equals: '<div autofocus="autofocus"></div>'! !
!AutoFocusComponentCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

