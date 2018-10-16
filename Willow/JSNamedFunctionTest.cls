"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSNamedFunctionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSNamedFunctionTest guid: (GUID fromString: '{e9149b4d-ebea-4357-a2d6-8aba617a75e1}')!
JSNamedFunctionTest comment: 'A NamedJavascriptFunctionTest is a test class for testing the behavior of NamedJavascriptFunction'!
!JSNamedFunctionTest categoriesForClass!Boardwalk-Tests-Javascript! !
!JSNamedFunctionTest methodsFor!

testJavascriptContentOn	| emptyJsFunction |	emptyJsFunction := JSNamedFunction named: 'empty'.	self assert: emptyJsFunction equals: 'function empty(){}'!

testJavascriptContentOnWithBody	| jsFunction |	jsFunction := JSNamedFunction named: 'handleAjaxErrorCall'.	jsFunction arguments: #('theXMLHttpRequest' 'textStatus' 'errorThrown').	jsFunction << (JSStream on: 'theXMLHttpRequest') call: 'getAllResponseHeaders'.	self		assert: jsFunction		equals: 'function handleAjaxErrorCall(theXMLHttpRequest,textStatus,errorThrown){theXMLHttpRequest.getAllResponseHeaders()}'! !
!JSNamedFunctionTest categoriesFor: #testJavascriptContentOn!public!tests/printing! !
!JSNamedFunctionTest categoriesFor: #testJavascriptContentOnWithBody!public!tests/printing! !

