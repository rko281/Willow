"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapDatePickerWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatePickerWebViewTest guid: (GUID fromString: '{5721e08e-9fe5-49a5-b8d8-7dc3fa2b1fb1}')!
BootstrapDatePickerWebViewTest comment: 'A BootstrapDatePickerWebViewTest is a test class for testing the behavior of BootstrapDatePickerWebView'!
!BootstrapDatePickerWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapDatePickerWebViewTest methodsFor!

testRenderContentOn	| html |	html := self render: (BootstrapDatePickerWebView wrapping: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ])).	self		assert: html		equals:			'<div class="input-group date" data-provide="datepicker"><input value="" name="1" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div>'!

testRenderContentOnWithCommands	| html |	html := self		render:			(BootstrapDatePickerWebView				wrapping: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ])				applying:					(BootstrapDatepickerCommand						configuredBy: [ :datepicker | 							datepicker								autoclose: true;								disableTouchKeyboard: true ])).	self		assert: html		equals:			'<div class="input-group date" data-provide="datepicker" id="id1"><input value="" name="2" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div><script type="text/javascript">$("#id1").datepicker({"autoclose":true,"disableTouchKeyboard":true});</script>'! !
!BootstrapDatePickerWebViewTest categoriesFor: #testRenderContentOn!public!tests/initialization! !
!BootstrapDatePickerWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/initialization! !

