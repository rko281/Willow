"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #Bootstrap3ViewportConfigurationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3ViewportConfigurationTest guid: (GUID fromString: '{2cce83d1-6a42-4177-aef5-073426584f5f}')!
Bootstrap3ViewportConfigurationTest comment: 'A BootstrapViewportConfigurationTest is a test class for testing the behavior of BootstrapViewportConfiguration'!
!Bootstrap3ViewportConfigurationTest categoriesForClass!Willow-Bootstrap-3-Tests-Plugins! !
!Bootstrap3ViewportConfigurationTest methodsFor!

testJavascriptContentOn	self		assert: Bootstrap3ViewportConfiguration new asJavascript equals: '{"selector":"body","padding":0}';		assert: (Bootstrap3ViewportConfiguration new selector: 'div' padding: 15) asJavascript equals: '{"selector":"div","padding":15}'! !
!Bootstrap3ViewportConfigurationTest categoriesFor: #testJavascriptContentOn!public!tests/printing! !

