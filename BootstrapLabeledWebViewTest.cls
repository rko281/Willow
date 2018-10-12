"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapLabeledWebViewTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapLabeledWebViewTest guid: (GUID fromString: '{37035414-73ff-416b-ae4a-d18e46fea6e0}')!
BootstrapLabeledWebViewTest comment: 'A BootstrapLabeledWebViewTest is a test class for testing the behavior of BootstrapLabeledWebView'!
!BootstrapLabeledWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapLabeledWebViewTest methodsFor!

setUp	super setUp.	supplier := BootstrapComponentSupplier online!

testRenderContentOn	| labeledView html |	labeledView := BootstrapLabeledWebView		displaying: 'E-Mail'		applying: [ :label |  ]		boundTo: (supplier singleLineTextFieldApplying: [ :field |  ])		applying: [ :fieldContainer |  ].	html := self render: labeledView.	self assert: html equals: '<div class="form-group"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'!

testRenderContentOnWithContainerCommand	| labeledView html |	labeledView := BootstrapLabeledWebView		applying: [ :container | container addClass bootstrap formGroupLarge ]		displaying: 'E-Mail'		applying: [ :label |  ]		boundTo: (supplier singleLineTextFieldApplying: [ :field |  ])		applying: [ :fieldContainer |  ].	html := self render: labeledView.	self		assert: html		equals:			'<div class="form-group form-group-lg"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>'!

testRenderContentOnWithFieldCommand	| labeledView html |	labeledView := BootstrapLabeledWebView		displaying: 'E-Mail'		applying: [ :label | label addClass bootstrap columnMedium: 2 ]		boundTo: (supplier singleLineTextFieldApplying: [ :field |  ])		applying: [ :fieldContainer | fieldContainer addClass bootstrap columnMedium: 10 ].	html := self render: labeledView.	self		assert: html		equals: '<div class="form-group"><label for="text-id1" class="control-label col-md-2">E-Mail</label><div class="col-md-10"><input value="" name="2" id="text-id1" class="form-control" type="text"/></div></div>'!

testRenderContentWithHelpText	| labeledView html |	labeledView := BootstrapLabeledWebView		displaying: 'E-Mail'		applying: [ :label |  ]		boundTo: (BootstrapHelpTextWebView boundTo: (supplier singleLineTextFieldApplying: [ :field |  ]) describedBy: 'A block of help text that breaks onto a new line and may extend beyond one line.')		applying: [ :fieldContainer |  ].	html := self render: labeledView.	self		assert: html		equals:			'<div class="form-group"><label for="text-id1" class="control-label">E-Mail</label><input value="" name="2" id="text-id1" class="form-control" type="text"/><span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span></div>'! !
!BootstrapLabeledWebViewTest categoriesFor: #setUp!public!tests/rendering! !
!BootstrapLabeledWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!BootstrapLabeledWebViewTest categoriesFor: #testRenderContentOnWithContainerCommand!public!tests/rendering! !
!BootstrapLabeledWebViewTest categoriesFor: #testRenderContentOnWithFieldCommand!public!tests/rendering! !
!BootstrapLabeledWebViewTest categoriesFor: #testRenderContentWithHelpText!public!tests/rendering! !

