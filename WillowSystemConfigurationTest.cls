"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WillowSystemConfigurationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowSystemConfigurationTest guid: (GUID fromString: '{e3c0198e-2a24-486b-9343-1ed8e5912fdd}')!
WillowSystemConfigurationTest comment: 'A WillowSystemConfigurationTest is a test class for testing the behavior of WillowSystemConfiguration'!
!WillowSystemConfigurationTest categoriesForClass!Willow-Tests-Applications! !
!WillowSystemConfigurationTest methodsFor!

testDescribeOn	| config description attribute |	config := WillowSystemConfiguration instance.	description := config buildDescription.	attribute := description attributes at: WillowSystemConfiguration deploymentModeClassKey.	self assert: attribute comment equals: 'The deployment mode of the application.'.	attribute := description attributes at: WillowSystemConfiguration languageKey.	self		assert: attribute default equals: 'en';		assert: attribute comment equals: 'The language of the application ("en" if absent)'! !
!WillowSystemConfigurationTest categoriesFor: #testDescribeOn!public!tests/description! !

