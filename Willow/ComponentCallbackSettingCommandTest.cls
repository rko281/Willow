"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentCallbackSettingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentCallbackSettingCommandTest guid: (GUID fromString: '{4caffa90-56f5-4ad6-880d-94289a578848}')!
ComponentCallbackSettingCommandTest comment: 'A ComponentCallbackSettingCommandTest is a test class for testing the behavior of ComponentCallbackSettingCommand'!
!ComponentCallbackSettingCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentCallbackSettingCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: (ComponentCallbackSettingCommand setting: [ "Do something in real life." ])		toComponentDefinedBy: [ :canvas | canvas anchor ].	self assert: html equals: '<a href="/?1"></a>'! !
!ComponentCallbackSettingCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

