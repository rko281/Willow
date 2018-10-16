"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #PluggableExecutionOnClientCommandTest
	instanceVariableNames: 'command commandAction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PluggableExecutionOnClientCommandTest guid: (GUID fromString: '{39938fd4-405c-44aa-9d18-66ac3403f819}')!
PluggableExecutionOnClientCommandTest comment: ''!
!PluggableExecutionOnClientCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!PluggableExecutionOnClientCommandTest methodsFor!

setUp	super setUp.	commandAction := [ :canvas | JSStream this ].	command := PluggableExecutionOnClientCommand executingOnly: commandAction!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	self assert: command modelLoadingActions isEmpty!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization!

testServerIndependentActions	| actions |	actions := command serverIndependentActions.	self assert: actions size equals: 1.	actions do: [ :action | self render: [ :canvas | self assert: (action value: JSScript new value: canvas) greaseString equals: 'this' ] ]! !
!PluggableExecutionOnClientCommandTest categoriesFor: #setUp!initialization!public! !
!PluggableExecutionOnClientCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!PluggableExecutionOnClientCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!PluggableExecutionOnClientCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!PluggableExecutionOnClientCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!PluggableExecutionOnClientCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

