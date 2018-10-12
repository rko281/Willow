"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #ComponentValueSettingCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentValueSettingCommandTest guid: (GUID fromString: '{906359d6-4403-4566-81d6-388f0626e881}')!
ComponentValueSettingCommandTest comment: 'A ComponentValueSettingCommandTest is a test class for testing the behavior of ComponentValueSettingCommand'!
!ComponentValueSettingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!ComponentValueSettingCommandTest methodsFor!

setUp	super setUp.	command := ComponentValueSettingCommand obtainingIdentifierFrom: [ 'id-12' ] valueFrom: [ '3' ]!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script input |			script := canvas javascript.			input := canvas textInput.			canvas ensureIdFor: input.			(ComponentValueSettingCommand triggeringChangesObtainingIdentifierFrom: [ input identifier ] valueFrom: [ '15' ]) modelLoadingActions do: [ :action | action value: script value: canvas ].			input script: (canvas jQuery this onClick: script) ].	self assert: html equals: '<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(){$("#input-id1").val("15").trigger("change")});</script>'!

testModelLoadingActionsWithoutTriggering	| html |	html := self		renderUsing: [ :canvas | 			| script input |			script := canvas javascript.			input := canvas textInput.			canvas ensureIdFor: input.			(ComponentValueSettingCommand obtainingIdentifierFrom: [ input identifier ] valueFrom: [ '15' ]) modelLoadingActions do: [ :action | action value: script value: canvas ].			input script: (canvas jQuery this onClick: script) ].	self assert: html equals: '<input id="input-id1" type="text"/><script type="text/javascript">$("#input-id1").click(function(){$("#input-id1").val("15")});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization!

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!ComponentValueSettingCommandTest categoriesFor: #setUp!initialization!public! !
!ComponentValueSettingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!ComponentValueSettingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!ComponentValueSettingCommandTest categoriesFor: #testModelLoadingActionsWithoutTriggering!public!tests/accessing! !
!ComponentValueSettingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!ComponentValueSettingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!ComponentValueSettingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

