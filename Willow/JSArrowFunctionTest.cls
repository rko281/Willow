"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSArrowFunctionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSArrowFunctionTest guid: (GUID fromString: '{f5db1ad6-07f9-499f-90d7-9d419ac51367}')!
JSArrowFunctionTest comment: 'A JSArrowFunctionTest is a test class for testing the behavior of JSArrowFunction'!
!JSArrowFunctionTest categoriesForClass!Boardwalk-Tests-Javascript! !
!JSArrowFunctionTest methodsFor!

function	^ JSFunction context: self renderContext!

nonEmptyFunction	^ self function		add: ( JSStream on: 'const count = 1.0' );		add: ( JSStream on: 'count' );		return: true!

script	^ JSScript context: self renderContext!

testAsArrowFunction	self		assert: ( 'a.example()' asArrowFunction: #(a) ) asArrowFunction equals: '(a) => {a.example()}';		assert: 'example()' asArrowFunction asArrowFunction equals: '() => {example()}'!

testAsFunction	self		assert: ( 'a.example()' asArrowFunction: #(a) ) asFunction equals: 'function(a){a.example()}';		assert: 'example()' asArrowFunction asFunction equals: 'function(){example()}';		assert: ( self nonEmptyFunction asArrowFunction: #(a b) ) asFunction			equals: 'function(a,b){const count = 1.0;return count}';		assert: self nonEmptyFunction asArrowFunction asFunction			equals: 'function(){const count = 1.0;return count}'!

testAsFunctionWithArguments	self		assert: ( ( 'a.example()' asArrowFunction: #(a) ) asFunction: #(a) )			equals: 'function(a){a.example()}';		assert: ( 'example()' asArrowFunction asFunction: #(a) ) equals: 'function(a){example()}';		assert: ( self nonEmptyFunction asArrowFunction asFunction: #(a b) )			equals: 'function(a,b){const count = 1.0;return count}';		assert: ( self nonEmptyFunction asArrowFunction asFunction: #(b) )			equals: 'function(b){const count = 1.0;return count}'!

testEmptyFunctions	self		assert: ( self script asArrowFunction: #(a) ) equals: '(a) => {}';		assert: self script asArrowFunction equals: '() => {}';		assert: ( self function asArrowFunction: #(a b) ) equals: '(a,b) => {}';		assert: self function asArrowFunction equals: '() => {}'!

testNonEmptyFunctions	self		assert: ( 'a.example()' asArrowFunction: #(a) ) equals: '(a) => {a.example()}';		assert: 'example()' asArrowFunction equals: '() => {example()}';		assert: ( self nonEmptyFunction asArrowFunction: #(a b) )			equals: '(a,b) => {const count = 1.0;return count}';		assert: self nonEmptyFunction asArrowFunction equals: '() => {const count = 1.0;return count}'! !
!JSArrowFunctionTest categoriesFor: #function!accessing!public! !
!JSArrowFunctionTest categoriesFor: #nonEmptyFunction!accessing!public! !
!JSArrowFunctionTest categoriesFor: #script!accessing!public! !
!JSArrowFunctionTest categoriesFor: #testAsArrowFunction!public!tests! !
!JSArrowFunctionTest categoriesFor: #testAsFunction!public!tests! !
!JSArrowFunctionTest categoriesFor: #testAsFunctionWithArguments!public!tests! !
!JSArrowFunctionTest categoriesFor: #testEmptyFunctions!public!tests! !
!JSArrowFunctionTest categoriesFor: #testNonEmptyFunctions!public!tests! !

