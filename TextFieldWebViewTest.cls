"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #TextFieldWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TextFieldWebViewTest guid: (GUID fromString: '{425114c8-0c86-4125-a223-49245d5db793}')!
TextFieldWebViewTest comment: 'A TextFieldWebViewTest is a test class for testing the behavior of TextFieldWebView'!
!TextFieldWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!TextFieldWebViewTest methodsFor!

changeNotifiedBy: aTextFieldWebView	notificationWasReceived := true!

testContents	| textField |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ].	self assert: textField contents isEmpty.	textField changeContentsTo: 'Hello World!!'.	self assert: textField contents equals: 'Hello World!!'!

testIdentifyIn	| textField html |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ].	html := self		renderUsing: [ :canvas | 			textField identifyIn: canvas.			canvas render: textField ].	self		assert: html equals: '<input value="" name="2" id="text-id1" type="text"/>';		assert: textField identifier equals: 'text-id1'!

testModel	| textField |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ].	self assert: textField model equals: textField contents.	textField changeModelTo: 'Hello World!!'.	self assert: textField model equals: 'Hello World!!'!

testNotifyChangesTo	| textField |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ].	textField notifyChangesTo: self.	notificationWasReceived := false.	textField changeContentsTo: ''.	self assert: notificationWasReceived!

testOnTrigger	| textField html |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ].	textField onTrigger disable.	html := self render: textField.	self assert: html equals: '<input value="" name="1" id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").change(function(event){$(this).prop("disabled",true)});</script>'!

testOnTriggerMultiLine	| textField html |	textField := TextFieldWebView multiLineTriggeringOnChangeApplying: [ :field |  ].	textField onTrigger disable.	html := self render: textField.	self		assert: html		equals: '<textarea rows="auto" cols="auto" name="1" id="textarea-id2"></textarea><script type="text/javascript">$("#textarea-id2").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| textField html |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ].	html := self render: textField.	self assert: html equals: '<input value="" name="1" type="text"/>'!

testRenderContentOnApplyingCommands	| textField html |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field | (field setNameTo: 'Neo') + field bePasswordInput ].	html := self render: textField.	self assert: html equals: '<input value="" name="Neo" type="password"/>'!

testRenderMultiLineContentWithContents	| textField html |	textField := TextFieldWebView multiLineTriggeringOnChangeApplying: [ :field |  ].	textField changeContentsTo: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' expandMacros.	html := self render: textField.	self		assert: html		equals: '<textarea rows="auto" cols="auto" name="1">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</textarea>'!

testRenderSingleLineContentWithContents	| textField html |	textField := TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ].	textField changeContentsTo: 'S & P'.	html := self render: textField.	self assert: html equals: '<input value="S &amp; P" name="1" type="text"/>'!

testTriggerOnKeyUp	| textField html |	textField := TextFieldWebView singleLineTriggeringOnKeyUpApplying: [ :field |  ].	textField onTrigger disable.	html := self render: textField.	self assert: html equals: '<input value="" name="1" id="input-id2" type="text"/><script type="text/javascript">$("#input-id2").keyup(function(event){$(this).prop("disabled",true)});</script>'!

testTriggerOnKeyUpMultiLine	| textField html |	textField := TextFieldWebView multiLineTriggeringOnKeyUpApplying: [ :field |  ].	textField onTrigger disable.	html := self render: textField.	self		assert: html		equals: '<textarea rows="auto" cols="auto" name="1" id="textarea-id2"></textarea><script type="text/javascript">$("#textarea-id2").keyup(function(event){$(this).prop("disabled",true)});</script>'! !
!TextFieldWebViewTest categoriesFor: #changeNotifiedBy:!public!test support! !
!TextFieldWebViewTest categoriesFor: #testContents!public!tests/container/API! !
!TextFieldWebViewTest categoriesFor: #testIdentifyIn!public!tests/configuring! !
!TextFieldWebViewTest categoriesFor: #testModel!public!tests/container/API! !
!TextFieldWebViewTest categoriesFor: #testNotifyChangesTo!public!tests/container/API! !
!TextFieldWebViewTest categoriesFor: #testOnTrigger!public!tests/configuring! !
!TextFieldWebViewTest categoriesFor: #testOnTriggerMultiLine!public!tests/configuring! !
!TextFieldWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!TextFieldWebViewTest categoriesFor: #testRenderContentOnApplyingCommands!public!tests/rendering! !
!TextFieldWebViewTest categoriesFor: #testRenderMultiLineContentWithContents!public!tests/rendering! !
!TextFieldWebViewTest categoriesFor: #testRenderSingleLineContentWithContents!public!tests/rendering! !
!TextFieldWebViewTest categoriesFor: #testTriggerOnKeyUp!public!tests/configuring! !
!TextFieldWebViewTest categoriesFor: #testTriggerOnKeyUpMultiLine!public!tests/configuring! !

