﻿"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapModalHeaderWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalHeaderWebViewTest guid: (GUID fromString: '{e468d0ca-e0eb-4ecf-a2b7-17407032cf03}')!
BootstrapModalHeaderWebViewTest comment: 'A BootstrapModalHeaderTest is a test class for testing the behavior of BootstrapModalHeaderWebView'!
!BootstrapModalHeaderWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapModalHeaderWebViewTest methodsFor!

testOnCloseTriggerDoesNothingIfNotDismissable	| header html |	header := BootstrapModalHeaderWebView titled: 'Welcome!!'.	header onCloseTrigger disable.	html := self render: header.	self assert: html equals: '<div class="modal-header"><h4 class="modal-title">Welcome!!</h4></div>'!

testOnCloseTriggerWhenDismissable	| header html |	header := BootstrapModalHeaderWebView dismissableTitled: 'Welcome!!'.	header onCloseTrigger disable.	html := self render: header.	self		assert: html		equals:			'<div class="modal-header"><button id="button-id1" class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Welcome!!</h4></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| header html |	header := BootstrapModalHeaderWebView titled: 'Welcome!!'.	html := self render: header.	self assert: html equals: '<div class="modal-header"><h4 class="modal-title">Welcome!!</h4></div>'!

testRenderContentOnWithDismissButton	| header html |	header := BootstrapModalHeaderWebView dismissableTitled: 'Welcome!!'.	html := self render: header.	self		assert: html		equals:			'<div class="modal-header"><button class="close" data-dismiss="modal" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 class="modal-title">Welcome!!</h4></div>'! !
!BootstrapModalHeaderWebViewTest categoriesFor: #testOnCloseTriggerDoesNothingIfNotDismissable!public!tests! !
!BootstrapModalHeaderWebViewTest categoriesFor: #testOnCloseTriggerWhenDismissable!public!tests! !
!BootstrapModalHeaderWebViewTest categoriesFor: #testRenderContentOn!public!tests! !
!BootstrapModalHeaderWebViewTest categoriesFor: #testRenderContentOnWithDismissButton!public!tests! !

