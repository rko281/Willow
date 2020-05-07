"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #BoardwalkJavascriptTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BoardwalkJavascriptTest guid: (GUID fromString: '{935f6be0-a488-497f-89c7-f24405b2c601}')!
BoardwalkJavascriptTest comment: 'I''m an unit test for Javascript extensions'!
!BoardwalkJavascriptTest categoriesForClass!Boardwalk-Tests-Javascript! !
!BoardwalkJavascriptTest methodsFor!

testJSDeclareConstVariable	self		assert: ( self javascript const: 'variable' assign: ( JSFunctionCall for: #example ) )			equals: 'const variable=example()';		assert: ( self javascript const: ( JSStream on: 'variable' ) assign: JSStream this )			equals: 'const variable=this'!

testJSDeclareGlobalNamespace	self		assert: (self javascript var: 'NS') equals: 'var NS';		assert: (self javascript var: (JSStream on: 'NS')) equals: 'var NS'!

testJSObjectAsImmediatelyInvokedFunctionExpression	| jsObject |	jsObject := (JSStream this equalTo: 0) asImmediatelyInvokedFunctionExpression.	self assert: jsObject equals: '(function(){this==0}())'!

testJSObjectCollect	| jsObject |	jsObject := JSStream this collect: [:currentValue | currentValue access: 'value' ].	self assert: jsObject equals: 'this.map((currentValue) => {return currentValue.value})'!

testJSObjectDetect	| jsObject |	jsObject := JSStream this		detect: [ :currentValue | ( currentValue access: 'value' ) equalTo: JSStream undefined ].	self assert: jsObject equals: 'this.find((currentValue) => {return currentValue.value==undefined})'!

testJSObjectDetectIfFound	| jsObject |	jsObject := JSStream this		detect: [ :currentValue | ( currentValue access: 'value' ) notEqualTo: 99 ]		ifFound: [ :foundValue :script | script << ( foundValue access: 'value' ) ].	self		assert: jsObject		equals:			'if((foundValue=this.find((currentValue) => {return currentValue.value!!=99}))!!=undefined){foundValue.value}'!

testJSObjectDetectIfFoundIfNone	| jsObject |	jsObject := JSStream this		detect: [ :currentValue | ( currentValue access: 'value' ) notEqualTo: 99 ]		ifFound: [ :foundValue :script | script << ( foundValue access: 'value' ) ]		ifNone: [ :script | 			script << ( ( JSStream on: 'console' ) call: 'log' with: 'Doh!!' ).			script << 8			].	self		assert: jsObject		equals:			'if((foundValue=this.find((currentValue) => {return currentValue.value!!=99}))!!=undefined){foundValue.value} else {console.log("Doh!!");8}'!

testJSObjectDetectIfNone	| jsObject |	jsObject := JSStream this		detect: [ :currentValue | ( currentValue access: 'value' ) notEqualTo: 99 ]		ifNone: [ :script | 			script << ( ( JSStream on: 'console' ) call: 'log' with: 'Doh!!' ).			script << 8			].	self		assert: jsObject		equals:			'if((foundValue=this.find((currentValue) => {return currentValue.value!!=99}))==undefined){console.log("Doh!!");8}'!

testJSObjectEqualTo	| jsObject |	jsObject := JSStream this equalTo: 0.	self assert: jsObject equals: 'this==0'!

testJSObjectGreaterThan	| jsObject |	jsObject := JSStream this greaterThan: 0.	self assert: jsObject equals: 'this>0'!

testJSObjectIdenticalTo	| jsObject |	jsObject := JSStream this identicalTo: 0.	self assert: jsObject equals: 'this===0'!

testJSObjectIf	| jsObject |	jsObject := self javascript if: (JSStream this equalTo: 0) then: true.	self assert: jsObject equals: 'if(this==0){true}'!

testJSObjectIfThenElse	| jsObject |	jsObject := self javascript		if: (JSStream this equalTo: 0)		then:			(self javascript				<< (self javascript var: 'a');				<< true;				yourself)		else: false.	self assert: jsObject equals: 'if(this==0){var a;true} else {false}'!

testJSObjectLessThan	| jsObject |	jsObject := JSStream this lessThan: 0.	self assert: jsObject equals: 'this<0'!

testJSObjectLGreaterThanOrEqualTo	| jsObject |	jsObject := JSStream this greaterThanOrEqualTo: 0.	self assert: jsObject equals: 'this>=0'!

testJSObjectLLessThanOrEqualTo	| jsObject |	jsObject := JSStream this lessThanOrEqualTo: 0.	self assert: jsObject equals: 'this<=0'!

testJSObjectMultiply	| jsObject |	jsObject := JSStream this * 100.	self assert: jsObject equals: 'this*100'!

testJSObjectNotEqualTo	| jsObject |	jsObject := JSStream this notEqualTo: 0.	self assert: jsObject equals: 'this!!=0'!

testJSObjectNotIdenticalTo	| jsObject |	jsObject := JSStream this notIdenticalTo: 0.	self assert: jsObject equals: 'this!!==0'!

testJSObjectSelect	| jsObject |	jsObject := JSStream this		select: [ :currentValue | (currentValue access: 'value') equalTo: JSStream undefined ].	self		assert: jsObject		equals: 'this.filter((currentValue) => {return currentValue.value==undefined})'!

testJSObjectSessionStorage	self assert: JSStream this sessionStorage equals: 'sessionStorage'!

testJSObjectTypeOf	| jsObject |	jsObject := JSStream undefined typeOf.	self assert: jsObject equals: 'typeof undefined'! !
!BoardwalkJavascriptTest categoriesFor: #testJSDeclareConstVariable!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSDeclareGlobalNamespace!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectAsImmediatelyInvokedFunctionExpression!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectCollect!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectDetect!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectDetectIfFound!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectDetectIfFoundIfNone!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectDetectIfNone!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectEqualTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectGreaterThan!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectIdenticalTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectIf!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectIfThenElse!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectLessThan!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectLGreaterThanOrEqualTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectLLessThanOrEqualTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectMultiply!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectNotEqualTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectNotIdenticalTo!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectSelect!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectSessionStorage!public!tests! !
!BoardwalkJavascriptTest categoriesFor: #testJSObjectTypeOf!public!tests! !

