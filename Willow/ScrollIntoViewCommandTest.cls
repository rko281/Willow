"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ScrollIntoViewCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ScrollIntoViewCommandTest guid: (GUID fromString: '{0f0373e6-7456-4344-b97f-5d50c6e4f32c}')!
ScrollIntoViewCommandTest comment: 'A ScrollIntoViewCommandTest is a test class for testing the behavior of ScrollIntoViewCommand'!
!ScrollIntoViewCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!ScrollIntoViewCommandTest methodsFor!

setUp	super setUp.	command := ScrollIntoViewCommand withComponentIdentifierProvidedBy: [ 'id8' ]!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script |			script := canvas javascript.			command modelLoadingActions do: [ :action | action value: script value: canvas ].			canvas anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals: '<a id="id1"></a><script type="text/javascript">$("#id1").click(function(){$("#id8").each(function(){$(this).get(0).scrollIntoView()})});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization!

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!ScrollIntoViewCommandTest categoriesFor: #setUp!initialization!public! !
!ScrollIntoViewCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!ScrollIntoViewCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!ScrollIntoViewCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!ScrollIntoViewCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!ScrollIntoViewCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

