"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentCallbackSettingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentCallbackSettingCommandTest guid: (GUID fromString: '{43335f20-7e95-4002-af86-0b00f486081e}')!
ComponentCallbackSettingCommandTest comment: 'A ComponentCallbackSettingCommandTest is a test class for testing the behavior of ComponentCallbackSettingCommand'!
!ComponentCallbackSettingCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentCallbackSettingCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (ComponentCallbackSettingCommand setting: [ "Do something in real life." ])		toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a href="/?1"></a>'! !
!ComponentCallbackSettingCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

