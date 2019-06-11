"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ConfirmationCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ConfirmationCommandTest guid: (GUID fromString: '{532870ab-ab86-4269-a759-de074b939aec}')!
ConfirmationCommandTest comment: 'A ConfirmationCommandTest is a test class for testing the behavior of ConfirmationCommand'!
!ConfirmationCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!ConfirmationCommandTest methodsFor!

setUp	super setUp.	command := ConfirmationCommand asking: 'Do you want to proceed?'!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	self assert: command modelLoadingActions isEmpty!

testPriorityActions	| html |	html := self		renderUsing: [ :canvas | 			| asynchronousCall anchor |			asynchronousCall := canvas jQuery ajax.			command priorityActions do: [ :action | action value: asynchronousCall value: canvas ].			anchor := canvas anchor.			canvas ensureIdFor: anchor.			anchor script: (canvas jQuery this onClick: asynchronousCall) ].	self		assert: html		equals: '<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){if(confirm("Do you want to proceed?")){$.ajax()}});</script>'!

testRequiresSerialization	self deny: command requiresSerialization !

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!ConfirmationCommandTest categoriesFor: #setUp!initialization!public! !
!ConfirmationCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!ConfirmationCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!ConfirmationCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!ConfirmationCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!ConfirmationCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

