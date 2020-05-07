"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3DatePickerWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3DatePickerWebViewTest guid: (GUID fromString: '{bc214259-ab40-4f0f-ab78-f0745569e412}')!
Bootstrap3DatePickerWebViewTest comment: 'A BootstrapDatePickerWebViewTest is a test class for testing the behavior of BootstrapDatePickerWebView'!
!Bootstrap3DatePickerWebViewTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3DatePickerWebViewTest methodsFor!

testRenderContentOn	| html |	html := self render: (Bootstrap3DatePickerWebView wrapping: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ])).	self		assert: html		equals:			'<div class="input-group date" data-provide="datepicker"><input value="" name="1" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div>'!

testRenderContentOnWithCommands	| html |	html := self		render:			(Bootstrap3DatePickerWebView				wrapping: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :field |  ])				applying:					(BootstrapDatepickerCommand						configuredBy: [ :datepicker | 							datepicker								autoclose: true;								disableTouchKeyboard: true ])).	self		assert: html		equals:			'<div class="input-group date" data-provide="datepicker" id="id1"><input value="" name="2" type="text"/><div class="input-group-addon"><small><span class="glyphicon glyphicon-triangle-bottom"></span></small></div></div><script type="text/javascript">$("#id1").datepicker({"autoclose":true,"disableTouchKeyboard":true});</script>'! !
!Bootstrap3DatePickerWebViewTest categoriesFor: #testRenderContentOn!public!tests/initialization! !
!Bootstrap3DatePickerWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/initialization! !

