"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #LoadingNotificationCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LoadingNotificationCommandTest guid: (GUID fromString: '{d749b59d-c1c4-4856-9b1e-26b731dea412}')!
LoadingNotificationCommandTest comment: 'A LoadingNotificationCommandTest is a test class for testing the behavior of LoadingNotificationCommand'!
!LoadingNotificationCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!LoadingNotificationCommandTest methodsFor!

setUp	super setUp.	command := LoadingNotificationCommand onPageTopWithClasses: #()!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			command modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals: '<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-notification-section").html("")});</script>'!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization!

testServerIndependentActions	| html |	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			command serverIndependentActions do: [ :action | action value: script value: canvas ].			anchor := canvas anchor.			canvas ensureIdFor: anchor.			anchor script: (canvas jQuery this onClick: script) ].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-notification-section").html("<div>Loading...</div>")});</script>'! !
!LoadingNotificationCommandTest categoriesFor: #setUp!initialization!public! !
!LoadingNotificationCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!LoadingNotificationCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

