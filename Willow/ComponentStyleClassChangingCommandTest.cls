"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentStyleClassChangingCommandTest
	instanceVariableNames: 'command'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentStyleClassChangingCommandTest guid: (GUID fromString: '{83a85e2d-04fd-4904-89cd-86bee5de89a9}')!
ComponentStyleClassChangingCommandTest comment: ''!
!ComponentStyleClassChangingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!ComponentStyleClassChangingCommandTest methodsFor!

setUp	super setUp.	command := ComponentStyleClassChangingCommand				on: [ :canvas | canvas jQuery class: 'aComponentByStyleName' ]				altering: 'anExistingStyle'				sending: #removeClass:				using: [ :component | component addClass: 'aNewStyle' ]!

testClientIndependentActions	self assert: command clientIndependentActions isEmpty!

testModelLoadingActions	self assert: command modelLoadingActions isEmpty!

testPriorityActions	self assert: command priorityActions isEmpty!

testRequiresSerialization	self deny: command requiresSerialization  !

testServerIndependentActions	| html |	html := self		renderUsing: [ :canvas | 			| script div |			script := canvas javascript.			command serverIndependentActions do: [ :action | action value: script value: canvas ].			div := canvas div.			canvas ensureIdFor: div.			div script: (canvas jQuery this onClick: script) ].	self		assert: html		equals:			'<div id="div-id1"></div><script type="text/javascript">$("#div-id1").click(function(){$(".aComponentByStyleName").removeClass("anExistingStyle").addClass("aNewStyle")});</script>'! !
!ComponentStyleClassChangingCommandTest categoriesFor: #setUp!initialization!public! !
!ComponentStyleClassChangingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!ComponentStyleClassChangingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!ComponentStyleClassChangingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!ComponentStyleClassChangingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!ComponentStyleClassChangingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

