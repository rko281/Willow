"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapModalFooterWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalFooterWebViewTest guid: (GUID fromString: '{0b9f037b-38b0-4160-b826-c0359a024b6e}')!
BootstrapModalFooterWebViewTest comment: 'A BootstrapModalFooterTest is a test class for testing the behavior of BootstrapModalFooterWebView'!
!BootstrapModalFooterWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapModalFooterWebViewTest methodsFor!

acceptButton	^ AsynchronicButtonWebView		labeled: 'Accept'		applying: [ :button | button addClass bootstrapCommon button + button addClass bootstrapCommon buttonPrimary ]!

testOnCloseTrigger	| footer html |	footer := BootstrapModalFooterWebView		with: self acceptButton		andCloseButtonLabeled: 'Close'		applyingToIt: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].	footer onCloseTrigger disable.	html := self render: footer.	self		assert: html		equals:			'<div class="modal-footer"><button id="button-id1" class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id2" class="btn btn-primary" type="button">Accept</button></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testOnTrigger	| footer html |	footer := BootstrapModalFooterWebView		with: self acceptButton		andCloseButtonLabeled: 'Close'		applyingToIt: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].	footer onTrigger disable.	html := self render: footer.	self		assert: html		equals:			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id1" class="btn btn-primary" type="button">Accept</button></div><script type="text/javascript">$("#button-id1").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| footer html |	footer := BootstrapModalFooterWebView		withCloseButtonLabeled: 'Close'		applying: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].	html := self render: footer.	self		assert: html		equals:			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button></div>'!

testRenderContentOnWithAdditionalButtons	| footer html |	footer := BootstrapModalFooterWebView		with: self acceptButton		andCloseButtonLabeled: 'Close'		applyingToIt: [ :closeButton | closeButton addClass bootstrapCommon buttonLink ].	html := self render: footer.	self		assert: html		equals:			'<div class="modal-footer"><button class="btn btn-link" data-dismiss="modal" type="button">Close</button><button id="button-id1" class="btn btn-primary" type="button">Accept</button></div>'! !
!BootstrapModalFooterWebViewTest categoriesFor: #acceptButton!private! !
!BootstrapModalFooterWebViewTest categoriesFor: #testOnCloseTrigger!public!tests/Configuring! !
!BootstrapModalFooterWebViewTest categoriesFor: #testOnTrigger!public!tests! !
!BootstrapModalFooterWebViewTest categoriesFor: #testRenderContentOn!public!tests! !
!BootstrapModalFooterWebViewTest categoriesFor: #testRenderContentOnWithAdditionalButtons!public!tests! !

