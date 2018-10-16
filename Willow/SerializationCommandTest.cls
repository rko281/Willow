"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #SerializationCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SerializationCommandTest guid: (GUID fromString: '{4abf3dea-db7c-4804-a877-5487cacacbc2}')!
SerializationCommandTest comment: 'A SerializationCommandTest is a test class for testing the behavior of SerializationCommand'!
!SerializationCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!SerializationCommandTest methodsFor!

setUp	super setUp.	command := SerializationCommand forCurrentObject!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testForChildForm	| html |	html := self		renderUsing: [ :canvas | 			| asynchronousCall div |			asynchronousCall := canvas jQuery ajax.			SerializationCommand forChildForm priorityActions do: [ :action | action value: asynchronousCall value: canvas ].			div := canvas div.			canvas ensureIdFor: div.			div script: (canvas jQuery this onClick: asynchronousCall) ].	self		assert: html		equals: '<div id="div-id2"></div><script type="text/javascript">$("#div-id2").click(function(){$.ajax({"type":"POST","url":"/","data":["1",$(this).children("form").serialize()].join("&")})});</script>'!

testForCurrentObjectWithHiddenInputs	| html |	html := self		renderUsing: [ :canvas | 			| asynchronousCall div |			asynchronousCall := canvas jQuery ajax.			SerializationCommand forCurrentObjectWithHiddenInputs priorityActions do: [ :action | action value: asynchronousCall value: canvas ].			div := canvas div.			canvas ensureIdFor: div.			div script: (canvas jQuery this onClick: asynchronousCall) ].	self		assert: html		equals: '<div id="div-id2"></div><script type="text/javascript">$("#div-id2").click(function(){$.ajax({"type":"POST","url":"/","data":["1",$(this).next("input:hidden").addBack().serialize()].join("&")})});</script>'!

testForParentForm	| html |	html := self		renderUsing: [ :canvas | 			| asynchronousCall input |			asynchronousCall := canvas jQuery ajax.			SerializationCommand forParentForm priorityActions do: [ :action | action value: asynchronousCall value: canvas ].			input := canvas textInput.			canvas ensureIdFor: input.			input script: (canvas jQuery this onClick: asynchronousCall) ].	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(){$.ajax({"type":"POST","url":"/","data":["1",$(this).closest("form").find(":input").serialize()].join("&")})});</script>'!

testModelLoadingActions	self assert: command modelLoadingActions isEmpty!

testPriorityActions	| html |	html := self		renderUsing: [ :canvas | 			| asynchronousCall input |			asynchronousCall := canvas jQuery ajax.			command priorityActions do: [ :action | action value: asynchronousCall value: canvas ].			input := canvas textInput.			canvas ensureIdFor: input.			input script: (canvas jQuery this onClick: asynchronousCall) ].	self		assert: html		equals:			'<input id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").click(function(){$.ajax({"type":"POST","url":"/","data":["1",$(this).serialize()].join("&")})});</script>'!

testRequiresSerialization	self deny: command requiresSerialization !

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!SerializationCommandTest categoriesFor: #setUp!initialization!public! !
!SerializationCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!SerializationCommandTest categoriesFor: #testForChildForm!public!tests/accessing! !
!SerializationCommandTest categoriesFor: #testForCurrentObjectWithHiddenInputs!public!tests/accessing! !
!SerializationCommandTest categoriesFor: #testForParentForm!public!tests/accessing! !
!SerializationCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!SerializationCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!SerializationCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!SerializationCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

