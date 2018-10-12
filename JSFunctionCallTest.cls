"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSFunctionCallTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSFunctionCallTest guid: (GUID fromString: '{6a9c4ba1-808a-4ea6-9e8b-f1bf0102787c}')!
JSFunctionCallTest comment: 'A JavascriptFunctionCallTest is a test class for testing the behavior of JavascriptFunctionCall'!
!JSFunctionCallTest categoriesForClass!Boardwalk-Tests-Javascript! !
!JSFunctionCallTest methodsFor!

testCallJsFunction	self		assert: (self javascript call: 'empty') equals: 'empty()';		assert: (self javascript call: 'empty' with: true) equals: 'empty(true)';		assert: (self javascript call: 'empty' with: true with: JSStream this) equals: 'empty(true,this)';		assert:			(self javascript				call: 'empty'				with: true				with: JSStream this				with: JSStream undefined)			equals: 'empty(true,this,undefined)'!

testJavascriptContentOn	| globalFunctionCall |	globalFunctionCall := JSFunctionCall for: 'empty'.	self assert: globalFunctionCall equals: 'empty()'!

testJavascriptContentOnWithOneParameters	| globalFunctionCall |	globalFunctionCall := JSFunctionCall for: 'enable' with: true.	self assert: globalFunctionCall equals: 'enable(true)'!

testJavascriptContentOnWithParameters	| globalFunctionCall |	globalFunctionCall := JSFunctionCall		for: 'enable'		withAll:			{true.			JSStream this}.	self assert: globalFunctionCall equals: 'enable(true,this)'! !
!JSFunctionCallTest categoriesFor: #testCallJsFunction!public!tests/printing! !
!JSFunctionCallTest categoriesFor: #testJavascriptContentOn!public!tests/printing! !
!JSFunctionCallTest categoriesFor: #testJavascriptContentOnWithOneParameters!public!tests/printing! !
!JSFunctionCallTest categoriesFor: #testJavascriptContentOnWithParameters!public!tests/printing! !

