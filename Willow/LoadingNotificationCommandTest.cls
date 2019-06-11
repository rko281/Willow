"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #LoadingNotificationCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LoadingNotificationCommandTest guid: (GUID fromString: '{cd34edd0-27d2-4003-bd1d-c6dfb9360b8e}')!
LoadingNotificationCommandTest comment: 'A LoadingNotificationCommandTest is a test class for testing the behavior of LoadingNotificationCommand'!
!LoadingNotificationCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!LoadingNotificationCommandTest methodsFor!

renderedContentUsingModelLoadingActionsOf: aCommand	^ self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			anchor := canvas anchor.			canvas ensureIdFor: anchor.			aCommand modelLoadingActions do: [ :action | action value: script value: canvas ].			anchor script: (canvas jQuery this onClick: script) ]!

renderedContentUsingServerIndependentActionOf: aCommand	^ self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			aCommand serverIndependentActions do: [ :action | action value: script value: canvas ].			anchor := canvas anchor.			canvas ensureIdFor: anchor.			anchor script: (canvas jQuery this onClick: script) ].!

testClientIndependentActions	| command |		command := LoadingNotificationCommand onPageTopWithClasses: #(). 		self assert: command clientIndependentActions isEmpty!

testClientIndependentActionsWithCustomView	| command |		command := LoadingNotificationCommand displaying: [ :canvas | canvas span with: 'Processing...' ] applying: [ :div | div addClass loading ].		self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	| html command |		command := LoadingNotificationCommand onPageTopWithClasses: #().	html := self renderedContentUsingModelLoadingActionsOf: command.	self		assert: html		equals: '<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-notification-section").html("")});</script>'!

testModelLoadingActionsWithCustomView	| html command |		command := LoadingNotificationCommand displaying: [ :canvas | canvas span with: 'Processing...' ] applying: [ :div | div addClass loading ].	html := self renderedContentUsingModelLoadingActionsOf: command.	self		assert: html		equals: '<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-notification-section").html("")});</script>'!

testPriorityActions	| command |		command := LoadingNotificationCommand onPageTopWithClasses: #(). 		self assert: command priorityActions isEmpty!

testPriorityActionsWithCustomView	| command |		command := LoadingNotificationCommand displaying: [ :canvas | canvas span with: 'Processing...' ] applying: [ :div | div addClass loading ].		self assert: command priorityActions isEmpty!

testRequiresSerialization	| command |		command := LoadingNotificationCommand onPageTopWithClasses: #(). 		self deny: command requiresSerialization!

testRequiresSerializationWithCustomView	| command |		command := LoadingNotificationCommand displaying: [ :canvas | canvas span with: 'Processing...' ] applying: [ :div | div addClass loading ].		self deny: command requiresSerialization!

testServerIndependentActions	| html command |		command := LoadingNotificationCommand onPageTopWithClasses: #('loading').	html := self renderedContentUsingServerIndependentActionOf: command.	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-notification-section").html("<div class=\"loading\">Loading...</div>")});</script>'!

testServerIndependentActionsWithCustomVIew	| html command |		command := LoadingNotificationCommand displaying: [ :canvas | canvas span with: 'Processing...' ] applying: [ :div | div addClass loading ].	html := self renderedContentUsingServerIndependentActionOf: command.	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){$("#willow-notification-section").html("<div class=\"willow-loading\"><span>Processing...</span></div>")});</script>'! !
!LoadingNotificationCommandTest categoriesFor: #renderedContentUsingModelLoadingActionsOf:!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #renderedContentUsingServerIndependentActionOf:!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testClientIndependentActionsWithCustomView!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testModelLoadingActionsWithCustomView!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testPriorityActionsWithCustomView!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!LoadingNotificationCommandTest categoriesFor: #testRequiresSerializationWithCustomView!public!tests/testing! !
!LoadingNotificationCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !
!LoadingNotificationCommandTest categoriesFor: #testServerIndependentActionsWithCustomVIew!public!tests/accessing! !

