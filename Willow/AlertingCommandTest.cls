﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #AlertingCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AlertingCommandTest guid: (GUID fromString: '{7742e4ad-4999-4d5c-84de-b5b3c09bd88d}')!
AlertingCommandTest comment: 'An AlertingCommandTest is a test class for testing the behavior of AlertingCommand'!
!AlertingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!AlertingCommandTest methodsFor!

setUp	super setUp.	command := AlertingCommand stating: 'Great!!'!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	self assert: command modelLoadingActions isEmpty!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization!

testServerIndependentActions	| html |	html := self		renderUsing: [ :canvas | 			| script div |			script := canvas javascript.			command serverIndependentActions do: [ :action | action value: script value: canvas ].			div := canvas div.			canvas ensureIdFor: div.			div script: (canvas jQuery this onClick: script) ].	self		assert: html		equals: '<div id="div-id1"></div><script type="text/javascript">$("#div-id1").click(function(){alert("Great!!")});</script>'! !
!AlertingCommandTest categoriesFor: #setUp!initialization!public! !
!AlertingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!AlertingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!AlertingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!AlertingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!AlertingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

