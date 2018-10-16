"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapDelayConfigurationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDelayConfigurationTest guid: (GUID fromString: '{1fc969e2-fcdd-4a12-9764-1b660f453d77}')!
BootstrapDelayConfigurationTest comment: 'A BootstrapDelayConfigurationTest is a test class for testing the behavior of BootstrapDelayConfiguration'!
!BootstrapDelayConfigurationTest categoriesForClass!Willow-Bootstrap-Tests-Plugins! !
!BootstrapDelayConfigurationTest methodsFor!

testJavascriptContentOn	self		assert: BootstrapDelayConfiguration new asJavascript equals: '{"show":0,"hide":0}';		assert: (BootstrapDelayConfiguration new show: 500 hide: 200) asJavascript equals: '{"show":500,"hide":200}'! !
!BootstrapDelayConfigurationTest categoriesFor: #testJavascriptContentOn!public!tests/printing! !

