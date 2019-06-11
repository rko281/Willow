"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentFocusingCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentFocusingCommandTest guid: (GUID fromString: '{d0e32d3d-9b36-49f3-81f7-8c69a53d1e1a}')!
ComponentFocusingCommandTest comment: 'A ComponentFocusingCommandTest is a test class for testing the behavior of ComponentFocusingCommand'!
!ComponentFocusingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!ComponentFocusingCommandTest methodsFor!

setUp	super setUp.	command := ComponentFocusingCommand findingComponentUsing: [ :canvas | canvas jQuery this ]!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script div |			script := canvas javascript.			div := canvas div.			canvas ensureIdFor: div.			(ComponentFocusingCommand for: div) modelLoadingActions do: [ :action | action value: script value: canvas ].			div script: (canvas jQuery this onClick: script) ].	self assert: html equals: '<div id="div-id1"></div><script type="text/javascript">$("#div-id1").click(function(){$("#div-id1").focus()});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization!

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!ComponentFocusingCommandTest categoriesFor: #setUp!initialization!public! !
!ComponentFocusingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!ComponentFocusingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!ComponentFocusingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!ComponentFocusingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!ComponentFocusingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

