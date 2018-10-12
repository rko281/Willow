"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapInputGroupWebViewTest
	instanceVariableNames: 'supplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapInputGroupWebViewTest guid: (GUID fromString: '{9befdbdd-255b-4c5c-8887-d1aabd1d2376}')!
BootstrapInputGroupWebViewTest comment: 'A BootstrapInputGroupWebViewTest is a test class for testing the behavior of BootstrapInputGroupWebView'!
!BootstrapInputGroupWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapInputGroupWebViewTest methodsFor!

setUp	super setUp.	supplier := BootstrapComponentSupplier online!

testIdentifyIn	| inputGroup html |	inputGroup := BootstrapInputGroupWebView prepending: (supplier inputGroupAddOnWrapping: 'http://') to: (supplier singleLineTextFieldApplying: [ :field |  ]) applying: [ :group |  ].	html := self		renderUsing: [ :canvas | 			inputGroup identifyIn: canvas.			canvas render: inputGroup ].	self		assert: html equals: '<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="2" id="text-id1" class="form-control" type="text"/></div>';		assert: inputGroup identifier equals: 'text-id1'!

testRenderContentOn	| inputGroup html |	inputGroup := BootstrapInputGroupWebView		wrapping: (supplier singleLineTextFieldApplying: [ :field |  ])		between: (supplier inputGroupAddOnWrapping: 'http://')		and:			(supplier				inputGroupButtonWrapping:					(supplier						synchronicButtonLabeled: 'Go!!'						applying: [ :button | button addClass bootstrap buttonDefault ]						evaluating: [  ]))		applying: [ :group |  ].	html := self render: inputGroup.	self		assert: html		equals:			'<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="1" class="form-control" type="text"/><span class="input-group-btn"><button name="2" class="btn btn-default" type="submit">Go!!</button></span></div>'!

testRenderContentOnWhenOnlyPreprended	| inputGroup html |	inputGroup := BootstrapInputGroupWebView prepending: (supplier inputGroupAddOnWrapping: 'http://') to: (supplier singleLineTextFieldApplying: [ :field |  ]) applying: [ :group |  ].	html := self render: inputGroup.	self assert: html equals: '<div class="input-group"><span class="input-group-addon">http://</span><input value="" name="1" class="form-control" type="text"/></div>'!

testRenderContentOnWithCommands	| inputGroup html |	inputGroup := BootstrapInputGroupWebView		appending:			(supplier				inputGroupButtonWrapping:					(supplier						synchronicButtonLabeled: 'Go!!'						applying: [ :button | button addClass bootstrap buttonDefault ]						evaluating: [  ]))		to: (supplier singleLineTextFieldApplying: [ :field |  ])		applying: [ :group | group addClass bootstrap inputGroupSmall ].	html := self render: inputGroup.	self		assert: html		equals:			'<div class="input-group input-group-sm"><input value="" name="1" class="form-control" type="text"/><span class="input-group-btn"><button name="2" class="btn btn-default" type="submit">Go!!</button></span></div>'! !
!BootstrapInputGroupWebViewTest categoriesFor: #setUp!initialization!public! !
!BootstrapInputGroupWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!BootstrapInputGroupWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!BootstrapInputGroupWebViewTest categoriesFor: #testRenderContentOnWhenOnlyPreprended!public!tests/rendering! !
!BootstrapInputGroupWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !

