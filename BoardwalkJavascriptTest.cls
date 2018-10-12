"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #BoardwalkJavascriptTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BoardwalkJavascriptTest guid: (GUID fromString: '{9c76b507-984c-4871-90fb-7e21121f12af}')!
BoardwalkJavascriptTest comment: 'I''m an unit test for Javascript extensions'!
!BoardwalkJavascriptTest categoriesForClass!Boardwalk-Tests-Javascript! !
!BoardwalkJavascriptTest methodsFor!

testJSDeclareGlobalNamespace	self		assert: (self javascript var: 'NS') equals: 'var NS';		assert: (self javascript var: (JSStream on: 'NS')) equals: 'var NS'!

testJSObjectAsImmediatelyInvokedFunctionExpression	| jsObject |	jsObject := (JSStream this equalTo: 0) asImmediatelyInvokedFunctionExpression.	self assert: jsObject equals: '(function(){this==0}())'!

testJSObjectEqualTo	| jsObject |	jsObject := JSStream this equalTo: 0.	self assert: jsObject equals: 'this==0'!

testJSObjectIdenticalTo	| jsObject |	jsObject := JSStream this identicalTo: 0.	self assert: jsObject equals: 'this===0'!

testJSObjectIf	| jsObject |	jsObject := self javascript if: (JSStream this equalTo: 0) then: true.	self assert: jsObject equals: 'if(this==0){true}'!

testJSObjectIfThenElse	| jsObject |	jsObject := self javascript		if: (JSStream this equalTo: 0)		then:			(self javascript				<< (self javascript var: 'a');				<< true;				yourself)		else: false.	self assert: jsObject equals: 'if(this==0){var a;true} else {false}'!

testJSObjectNotIdenticalTo	| jsObject |	jsObject := JSStream this notIdenticalTo: 0.	self assert: jsObject equals: 'this!!==0'!

testJSObjectSessionStorage	self assert: JSStream this sessionStorage equals: 'sessionStorage'!

testJSObjectTypeOf	| jsObject |	jsObject := JSStream undefined typeOf.	self assert: jsObject equals: 'typeof undefined'! !
!BoardwalkJavascriptTest categoriesFor: #testJSDeclareGlobalNamespace!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectAsImmediatelyInvokedFunctionExpression!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectEqualTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectIdenticalTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectIf!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectIfThenElse!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectNotIdenticalTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectSessionStorage!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectTypeOf!public!tests! !

