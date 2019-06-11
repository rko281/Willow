"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #WillowJavascriptNamespaceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowJavascriptNamespaceTest guid: (GUID fromString: '{d57407e9-1b09-43ad-a5ce-dd4ad624d6a4}')!
WillowJavascriptNamespaceTest comment: 'A WillowJavascriptNamespaceTest is a test class for testing the behavior of WillowJavascriptNamespace'!
!WillowJavascriptNamespaceTest categoriesForClass!Willow-Tests-Applications! !
!WillowJavascriptNamespaceTest methodsFor!

testCallServerFunction	self assert: WillowJavascriptNamespace new callServerFunction equals: 'Willow.callServer'!

testClassificationAccess	self assert: Willow classification >> #loading = 'willow-loading'!

testConstantsAccess	self assert: WillowJavascriptNamespace new constants >> #css >> #auto = 'auto'!

testHandleAjaxErrorCallFunction	self		assert: WillowJavascriptNamespace new handleAjaxErrorCallFunction		equals: 'Willow.handleAjaxErrorCall'!

testJavascriptContentOn	self assert: WillowJavascriptNamespace new equals: 'Willow'!

testSetCallServerFunctionTo	self		assert:			( WillowJavascriptNamespace new				setCallServerFunctionTo: ( JSFunction new arguments: #('arguments') ) )		equals: 'Willow.callServer=function(arguments){}'!

testSetHandleAjaxErrorCallFunctionTo	self		assert:			( WillowJavascriptNamespace new				setHandleAjaxErrorCallFunctionTo: ( JSFunction new arguments: #('xmlHttpRequest' 'textStatus' 'errorThrown') ) )		equals: 'Willow.handleAjaxErrorCall=function(xmlHttpRequest,textStatus,errorThrown){}'! !
!WillowJavascriptNamespaceTest categoriesFor: #testCallServerFunction!public!tests/Accessing! !
!WillowJavascriptNamespaceTest categoriesFor: #testClassificationAccess!public!tests/printing! !
!WillowJavascriptNamespaceTest categoriesFor: #testConstantsAccess!public!tests/printing! !
!WillowJavascriptNamespaceTest categoriesFor: #testHandleAjaxErrorCallFunction!public!tests/Accessing! !
!WillowJavascriptNamespaceTest categoriesFor: #testJavascriptContentOn!public!tests/printing! !
!WillowJavascriptNamespaceTest categoriesFor: #testSetCallServerFunctionTo!public!tests/Configuring! !
!WillowJavascriptNamespaceTest categoriesFor: #testSetHandleAjaxErrorCallFunctionTo!public!tests/Configuring! !

