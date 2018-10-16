"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #LabeledWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
LabeledWebViewTest guid: (GUID fromString: '{da372770-ae69-49a4-9c39-3f76a9e30436}')!
LabeledWebViewTest comment: 'A LabeledWebViewTest is a test class for testing the behavior of LabeledWebView'!
!LabeledWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!LabeledWebViewTest methodsFor!

testRenderContentOnWithDynamicLabel	| labeledView html label |	label := 'Field'.	labeledView := LabeledWebView		obtainingContentFrom: [ label ]		boundTo: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :textField |  ])		applying: [ :container |  ].	label := 'Text Field'.	html := self render: labeledView.	self		assert: html		equals:			'<label for="text-id1">Text Field</label><input value="" name="2" id="text-id1" type="text"/>'!

testRenderContentOnWithFixedLabel	| labeledView html |	labeledView := LabeledWebView		displaying: 'Field'		boundTo: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :textField |  ])		applying: [ :label |  ].	html := self render: labeledView.	self		assert: html		equals: '<label for="text-id1">Field</label><input value="" name="2" id="text-id1" type="text"/>'!

testRenderContentOnWithFixedLabelAndCommands	| labeledView html |	labeledView := LabeledWebView		displaying: 'Field'		boundTo: (TextFieldWebView singleLineTriggeringOnChangeApplying: [ :textField |  ])		applying: [ :label | label setTitleTo: 'Some field' ].	html := self render: labeledView.	self		assert: html		equals:			'<label for="text-id1" title="Some field">Field</label><input value="" name="2" id="text-id1" type="text"/>'! !
!LabeledWebViewTest categoriesFor: #testRenderContentOnWithDynamicLabel!public!tests! !
!LabeledWebViewTest categoriesFor: #testRenderContentOnWithFixedLabel!public!tests! !
!LabeledWebViewTest categoriesFor: #testRenderContentOnWithFixedLabelAndCommands!public!tests! !

