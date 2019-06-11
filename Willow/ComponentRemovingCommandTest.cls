"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentRemovingCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentRemovingCommandTest guid: (GUID fromString: '{5cf1e4f4-c941-4912-9f2a-7df6abe2327b}')!
ComponentRemovingCommandTest comment: 'A ComponentRemovingCommandTest is a test class for testing the behavior of ComponentRemovingCommand'!
!ComponentRemovingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!ComponentRemovingCommandTest methodsFor!

setUp	super setUp.	command := ComponentRemovingCommand for: (IdentifiedWebView forDivNamed: 'example' containing: [ :canvas |  ])!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script div |			script := canvas javascript.			div := canvas div.			canvas ensureIdFor: div.			(ComponentRemovingCommand for: div) modelLoadingActions do: [ :action | action value: script value: canvas ].			div script: (canvas jQuery this onClick: script) ].	self assert: html equals: '<div id="div-id1"></div><script type="text/javascript">$("#div-id1").click(function(){$("#div-id1").remove()});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization  !

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!ComponentRemovingCommandTest categoriesFor: #setUp!initialization!public! !
!ComponentRemovingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!ComponentRemovingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!ComponentRemovingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!ComponentRemovingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!ComponentRemovingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

