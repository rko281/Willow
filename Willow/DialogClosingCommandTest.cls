"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #DialogClosingCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DialogClosingCommandTest guid: (GUID fromString: '{038ad095-170b-4f0f-bebc-f0bfda1f00f0}')!
DialogClosingCommandTest comment: 'A DialogClosingCommandTest is a test class for testing the behavior of DialogClosingCommand'!
!DialogClosingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!DialogClosingCommandTest methodsFor!

componentSupplier		^Html5ComponentSupplier new!

createHandlers	^ Array with: self!

isSession^true!

setUp	super setUp.	command := DialogClosingCommand forAllDialogs!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActionsWhenOnlyRemovingLastDialog	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			DialogClosingCommand onlyForLastDialog modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-dialog-section").children("dialog").last().removeAttr("open")});</script>'!

testModelLoadingActionsWhenRemovingAllDialogs	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			command modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-dialog-section").children("dialog").removeAttr("open")});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization  !

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!DialogClosingCommandTest categoriesFor: #componentSupplier!private! !
!DialogClosingCommandTest categoriesFor: #createHandlers!private! !
!DialogClosingCommandTest categoriesFor: #isSession!private! !
!DialogClosingCommandTest categoriesFor: #setUp!initialization!public! !
!DialogClosingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!DialogClosingCommandTest categoriesFor: #testModelLoadingActionsWhenOnlyRemovingLastDialog!public!tests/accessing! !
!DialogClosingCommandTest categoriesFor: #testModelLoadingActionsWhenRemovingAllDialogs!public!tests/accessing! !
!DialogClosingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!DialogClosingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!DialogClosingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

