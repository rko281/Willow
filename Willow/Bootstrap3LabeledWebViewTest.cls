"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3LabeledWebViewTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3LabeledWebViewTest guid: (GUID fromString: '{b77c410f-f203-472c-bb21-c03f88626420}')!
Bootstrap3LabeledWebViewTest comment: 'A BootstrapLabeledWebViewTest is a test class for testing the behavior of BootstrapLabeledWebView'!
!Bootstrap3LabeledWebViewTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3LabeledWebViewTest methodsFor!

setUp	super setUp.	supplier := Bootstrap3ComponentSupplier online!

testRenderContentOn	| labeledView html |	labeledView := supplier		labeledFieldApplying: [  ]		displaying: 'E-Mail'		applying: [ :label |  ]		boundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )		applying: [ :fieldContainer |  ].	html := self render: labeledView.	self		assert: html		equals:			'<div class="form-group"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'!

testRenderContentOnWithContainerCommand	| labeledView html |	labeledView := supplier		labeledFieldApplying: [ :container | container addClass bootstrap3 formGroupLarge ]		displaying: 'E-Mail'		applying: [ :label |  ]		boundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )		applying: [ :fieldContainer |  ].	html := self render: labeledView.	self		assert: html		equals:			'<div class="form-group form-group-lg"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'!

testRenderContentOnWithFieldCommand	| labeledView html |	labeledView := supplier		labeledFieldApplying: [  ]		displaying: 'E-Mail'		applying: [ :label | label addClass bootstrap3 columnMedium: 2 ]		boundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )		applying: [ :fieldContainer | fieldContainer addClass bootstrap3 columnMedium: 10 ].	html := self render: labeledView.	self		assert: html		equals:			'<div class="form-group"><label for="text-id1" class="control-label col-md-2">E-Mail</label><div class="col-md-10"><input value="" name="2" id="text-id1" class="form-control" type="text"/></div></div>'!

testRenderContentWithHelpText	| labeledView html |	labeledView := supplier		labeledFieldApplying: [  ]		displaying: 'E-Mail'		applying: [ :label |  ]		boundTo:			( supplier				helpTextBoundTo: ( supplier singleLineTextFieldApplying: [ :field |  ] )				describedBy: 'A block of help text that breaks onto a new line and may extend beyond one line.' )		applying: [ :fieldContainer |  ].	html := self render: labeledView.	self		assert: html		equals:			'<div class="form-group"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/><span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span></div>'! !
!Bootstrap3LabeledWebViewTest categoriesFor: #setUp!public!tests/rendering! !
!Bootstrap3LabeledWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!Bootstrap3LabeledWebViewTest categoriesFor: #testRenderContentOnWithContainerCommand!public!tests/rendering! !
!Bootstrap3LabeledWebViewTest categoriesFor: #testRenderContentOnWithFieldCommand!public!tests/rendering! !
!Bootstrap3LabeledWebViewTest categoriesFor: #testRenderContentWithHelpText!public!tests/rendering! !

