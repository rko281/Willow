"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #InputModeCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
InputModeCommandTest guid: (GUID fromString: '{c3a9116c-c154-405c-8883-6ba64a8dbf9f}')!
InputModeCommandTest comment: 'A DateInputModeCommandTest is a test class for testing the behavior of DateInputModeCommand'!
!InputModeCommandTest categoriesForClass!Willow-Tests-Frontend! !
!InputModeCommandTest methodsFor!

testApplyDateInputCommand	| html |	html := self apply: InputModeCommand asDate toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: (self renderUsing: [ :canvas | canvas dateInput5 ])!

testApplyNumberInputCommand	| html |	html := self apply: InputModeCommand asNumber toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: (self renderUsing: [ :canvas | canvas numberInput ])!

testApplyPasswordInputCommand	| html |	html := self apply: InputModeCommand asPassword toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input type="password"/>'! !
!InputModeCommandTest categoriesFor: #testApplyDateInputCommand!public!tests/processing! !
!InputModeCommandTest categoriesFor: #testApplyNumberInputCommand!public!tests/processing! !
!InputModeCommandTest categoriesFor: #testApplyPasswordInputCommand!public!tests/processing! !

