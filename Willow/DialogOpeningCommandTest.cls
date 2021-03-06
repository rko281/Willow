﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #DialogOpeningCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DialogOpeningCommandTest guid: (GUID fromString: '{871dc8a7-f35d-47de-835b-3601ff53feea}')!
DialogOpeningCommandTest comment: 'A DialogOpeningCommandTest is a test class for testing the behavior of DialogOpeningCommand'!
!DialogOpeningCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!DialogOpeningCommandTest methodsFor!

setUp	super setUp.	command := DialogOpeningCommand alwaysOpening: [ :canvas | canvas dialog attributeAt: 'open' put: true ]!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			command modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-dialog-section").append("<dialog open></dialog>")});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization  !

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!DialogOpeningCommandTest categoriesFor: #setUp!initialization!public! !
!DialogOpeningCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!DialogOpeningCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!DialogOpeningCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!DialogOpeningCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!DialogOpeningCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

