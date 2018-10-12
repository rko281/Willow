"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentEnableStatusChangingCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentEnableStatusChangingCommandTest guid: (GUID fromString: '{c7a25219-eb4a-4cf8-911f-cf4f898701bd}')!
ComponentEnableStatusChangingCommandTest comment: 'A ComponentEnableStatusChangingCommandTest is a test class for testing the behavior of ComponentEnableStatusChangingCommand'!
!ComponentEnableStatusChangingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!ComponentEnableStatusChangingCommandTest methodsFor!

setUp	super setUp .	command := ComponentEnableStatusChangingCommand disablingCurrentComponent.!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	self assert: command modelLoadingActions isEmpty!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization!

testServerIndependentActions	| html |	html := self		renderUsing: [ :canvas | 			| script div |			script := canvas javascript.			command serverIndependentActions do: [ :action | action value: script value: canvas ].			div := canvas div.			canvas ensureIdFor: div.			div script: (canvas jQuery this onClick: script) ].	self		assert: html		equals: '<div id="div-id1"></div><script type="text/javascript">$("#div-id1").click(function(){$(this).prop("disabled",true)});</script>'! !
!ComponentEnableStatusChangingCommandTest categoriesFor: #setUp!initialization!public! !
!ComponentEnableStatusChangingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!ComponentEnableStatusChangingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!ComponentEnableStatusChangingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!ComponentEnableStatusChangingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!ComponentEnableStatusChangingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

