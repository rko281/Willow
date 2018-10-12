"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #FormSubmitCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
FormSubmitCommandTest guid: (GUID fromString: '{8bc995f7-7329-4577-8ae1-f5c60bb05c01}')!
FormSubmitCommandTest comment: 'A FormSubmitCommandTest is a test class for testing the behavior of FormSubmitCommand'!
!FormSubmitCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!FormSubmitCommandTest methodsFor!

setUp	super setUp.	command := FormSubmitCommand findingComponentUsing: [ :canvas | canvas jQuery this ]!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			(FormSubmitCommand forFormStyledAs: Classification >> #willow) modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ].	self assert: html equals: '<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("form.willow").submit()});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization !

testServerIndependentActions	self assert: command serverIndependentActions isEmpty! !
!FormSubmitCommandTest categoriesFor: #setUp!public!tests/accessing! !
!FormSubmitCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!FormSubmitCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!FormSubmitCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!FormSubmitCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!FormSubmitCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

