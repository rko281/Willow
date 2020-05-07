"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #TemporarilyDisablingCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TemporarilyDisablingCommandTest guid: (GUID fromString: '{f2628284-8a0a-40fc-ba60-70995e6c89cd}')!
TemporarilyDisablingCommandTest comment: 'A TemporarilyDisablingCommandTest is a test class for testing the behavior of TemporarilyDisablingCommand'!
!TemporarilyDisablingCommandTest categoriesForClass!Willow-Tests-WebInteraction! !
!TemporarilyDisablingCommandTest methodsFor!

testClientIndependentActions	self assert: (TemporarilyDisablingCommand transformingCurrentViewInto: [ :canvas |  ]) clientIndependentActions isEmpty!

testModelLoadingActions	self assert: (TemporarilyDisablingCommand transformingCurrentViewInto: [ :canvas |  ]) modelLoadingActions isEmpty!

testPriorityActions	| command html |	command := TemporarilyDisablingCommand		transformingCurrentViewInto: [ :canvas | canvas span apply: [ :span | span addClass loading ] ].	html := self		renderUsing: [ :canvas | 			| asynchronousCall anchor |			asynchronousCall := canvas jQuery ajax.			command priorityActions do: [ :action | action value: asynchronousCall value: canvas ].			anchor := canvas anchor.			canvas ensureIdFor: anchor.			anchor script: ( canvas jQuery this onClick: asynchronousCall )			].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){if(componentToDisable.attr("data-willow-events-disabled")!!=="disabled"){componentToDisable.attr("data-willow-events-disabled","disabled").addClass("willow-disabled-component").attr("data-original-html",componentToDisable.html()).attr("disabled",true).html("<span class=\"willow-loading\"></span>");$.ajax({"complete":function(){componentToDisable.removeAttr("data-willow-events-disabled").attr("disabled",false).removeClass("willow-disabled-component").html(componentToDisable.attr("data-original-html"))}})}});</script>'!

testRequiresSerialization	self deny: (TemporarilyDisablingCommand transformingCurrentViewInto: [ :canvas |  ]) requiresSerialization!

testServerIndependentActions	| command html |	command := TemporarilyDisablingCommand		transformingCurrentViewInto: [ :canvas | canvas span apply: [ :span | span addClass loading ] ].	html := self		renderUsing: [ :canvas | 			| script anchor |			script := canvas javascript.			command serverIndependentActions do: [ :action | action value: script value: canvas ].			anchor := canvas anchor.			canvas ensureIdFor: anchor.			anchor script: ( canvas jQuery this onClick: script )			].	self		assert: html		equals:			'<a id="a-id1"></a><script type="text/javascript">$("#a-id1").click(function(){var componentToDisable=$(this)});</script>'! !
!TemporarilyDisablingCommandTest categoriesFor: #testClientIndependentActions!public!tests/accessing! !
!TemporarilyDisablingCommandTest categoriesFor: #testModelLoadingActions!public!tests/accessing! !
!TemporarilyDisablingCommandTest categoriesFor: #testPriorityActions!public!tests/accessing! !
!TemporarilyDisablingCommandTest categoriesFor: #testRequiresSerialization!public!tests/testing! !
!TemporarilyDisablingCommandTest categoriesFor: #testServerIndependentActions!public!tests/accessing! !

