"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WillowJavascriptNamespaceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowJavascriptNamespaceTest guid: (GUID fromString: '{255b1f7f-3975-4b8c-98c9-6c4f60afe1c2}')!
WillowJavascriptNamespaceTest comment: 'A WillowJavascriptNamespaceTest is a test class for testing the behavior of WillowJavascriptNamespace'!
!WillowJavascriptNamespaceTest categoriesForClass!Willow-Tests-Applications! !
!WillowJavascriptNamespaceTest methodsFor!

testCallServerFunction	self		assert: WillowJavascriptNamespace new callServerFunction asJavascript		equals: 'Willow.callServer'!

testClassificationAccess	self assert: Willow classification >> #loading equals: 'willow-loading'!

testConstantsAccess	self assert: WillowJavascriptNamespace new constants >> #css >> #auto equals: 'auto'!

testHandleAjaxErrorCallFunction	self		assert: WillowJavascriptNamespace new handleAjaxErrorCallFunction asJavascript		equals: 'Willow.handleAjaxErrorCall'!

testJavascriptContentOn	self assert: WillowJavascriptNamespace new asJavascript equals: 'Willow'!

testSetCallServerFunctionTo	self		assert:			(WillowJavascriptNamespace new				setCallServerFunctionTo: (JSFunction new arguments: #('arguments'))) asJavascript		equals: 'Willow.callServer=function(arguments){}'!

testSetHandleAjaxErrorCallFunctionTo	self		assert:			(WillowJavascriptNamespace new				setHandleAjaxErrorCallFunctionTo: (JSFunction new arguments: #('xmlHttpRequest' 'textStatus' 'errorThrown')))				asJavascript		equals: 'Willow.handleAjaxErrorCall=function(xmlHttpRequest,textStatus,errorThrown){}'! !
!WillowJavascriptNamespaceTest categoriesFor: #testCallServerFunction!public!tests/Accessing! !
!WillowJavascriptNamespaceTest categoriesFor: #testClassificationAccess!public!tests/printing! !
!WillowJavascriptNamespaceTest categoriesFor: #testConstantsAccess!public!tests/printing! !
!WillowJavascriptNamespaceTest categoriesFor: #testHandleAjaxErrorCallFunction!public!tests/Accessing! !
!WillowJavascriptNamespaceTest categoriesFor: #testJavascriptContentOn!public!tests/printing! !
!WillowJavascriptNamespaceTest categoriesFor: #testSetCallServerFunctionTo!public!tests/Configuring! !
!WillowJavascriptNamespaceTest categoriesFor: #testSetHandleAjaxErrorCallFunctionTo!public!tests/Configuring! !

