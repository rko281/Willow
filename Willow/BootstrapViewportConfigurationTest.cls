"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapViewportConfigurationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapViewportConfigurationTest guid: (GUID fromString: '{bc056d37-cb05-400b-9878-61ad95541adf}')!
BootstrapViewportConfigurationTest comment: 'A BootstrapViewportConfigurationTest is a test class for testing the behavior of BootstrapViewportConfiguration'!
!BootstrapViewportConfigurationTest categoriesForClass!Willow-Bootstrap-Tests-Plugins! !
!BootstrapViewportConfigurationTest methodsFor!

testJavascriptContentOn	self		assert: BootstrapViewportConfiguration new asJavascript equals: '{"selector":"body","padding":0}';		assert: (BootstrapViewportConfiguration new selector: 'div' padding: 15) asJavascript equals: '{"selector":"div","padding":15}'! !
!BootstrapViewportConfigurationTest categoriesFor: #testJavascriptContentOn!public!tests/printing! !

