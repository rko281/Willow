"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #RenderingCommandTest
	instanceVariableNames: 'identifiedView command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RenderingCommandTest guid: (GUID fromString: '{1c584a3f-61cd-4baf-b622-d2ad5c5be9b3}')!
RenderingCommandTest comment: 'A RenderingCommandTest is a test class for testing the behavior of RenderingCommand'!
!RenderingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!RenderingCommandTest methodsFor!

setUp	super setUp.	identifiedView := IdentifiedWebView forDivNamed: 'test' containing: [ :canvas | canvas span: 'Test' ].	command := RenderingCommand for: identifiedView!

testClientIndependentActions	self assert: command clientIndependentActions size equals: 1.	command clientIndependentActions do: [ :action | self assert: action value ]!

testEvaluatingAsConditionToRender	| html |	command := RenderingCommand evaluating: [ false ] asConditionToRender: identifiedView.	self assert: command clientIndependentActions size equals: 1.	command clientIndependentActions do: [ :action | self deny: action value ].	html := self		renderUsing: [ :canvas | 			| script |			script := canvas javascript.			identifiedView identifyIn: canvas.			command modelLoadingActions do: [ :action | action value: script value: canvas ].			canvas anchor script: (canvas jQuery this onClick: script) ].	"The function must be empty because the condition is false"	self assert: html equals: '<a id="id2"></a><script type="text/javascript">$("#id2").click(function(){});</script>'!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script |			script := canvas javascript.			identifiedView identifyIn: canvas.			command modelLoadingActions do: [ :action | action value: script value: canvas ].			canvas anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals: '<a id="id2"></a><script type="text/javascript">$("#id2").click(function(){$("#test-id1").html("<span>Test</span>")});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self assert: command requiresSerialization !

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!RenderingCommandTest categoriesFor: #setUp!initialization!public! !
!RenderingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!RenderingCommandTest categoriesFor: #testEvaluatingAsConditionToRender!public!tests/accessing! !
!RenderingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!RenderingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!RenderingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!RenderingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

