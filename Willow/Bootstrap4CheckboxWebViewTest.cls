"Filed out from Dolphin Smalltalk 7"!

BinaryChoiceWebViewTest subclass: #Bootstrap4CheckboxWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4CheckboxWebViewTest guid: (GUID fromString: '{a50a2858-4b4f-499c-8e4b-2779e33b7d9c}')!
Bootstrap4CheckboxWebViewTest comment: ''!
!Bootstrap4CheckboxWebViewTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4CheckboxWebViewTest methodsFor!

newBinaryChoiceView	^ Bootstrap4CheckboxWebView onModel: true offModel: false!

testIdentifyIn	| html checkbox |	checkbox := self newBinaryChoiceView.	html := self		renderUsing: [ :canvas | 			checkbox identifyIn: canvas.			canvas render: checkbox			].	self		assert: html			equals:			'<div class="form-check"><input class="form-check-input position-static" checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/></div>';		assert: checkbox identifier equals: 'checkbox-id1'!

testOnTrigger	| html binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	binaryChoiceView onTrigger disable.	html := self render: binaryChoiceView.	self		assert: html		equals:			'<div class="form-check"><input class="form-check-input position-static" checked name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/></div><script type="text/javascript">$("#input-id2").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderingAfterUpdatingModel	| html checkbox |	checkbox := Bootstrap4CheckboxWebView		onModel: 1		offModel: 2		applying: [ :theCheckbox | theCheckbox addClass willow ].	checkbox selectOffModel.	html := self render: checkbox.	self		assert: html		equals:			'<div class="form-check willow"><input class="willow form-check-input position-static" name="1" type="checkbox"/><input name="2" type="hidden"/></div>'.	checkbox selectOnModel.	html := self render: checkbox.	self		assert: html		equals:			'<div class="form-check willow"><input class="willow form-check-input position-static" checked name="1" type="checkbox"/><input name="2" type="hidden"/></div>'!

testRenderingWithLabel	| html checkbox |	checkbox := Bootstrap4CheckboxWebView		labeled: 'Enable network'		onModel: 1		offModel: 2		applying: [ :theCheckbox | theCheckbox addClass willow ].	html := self render: checkbox.	self		assert: html		equals:			'<div class="form-check willow"><input class="willow form-check-input" checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/><label for="checkbox-id1" class="form-check-label">Enable network</label></div>'!

testRenderingWithLabelAndCustomStyle	| html checkbox |	checkbox := Bootstrap4CheckboxWebView		labeled: 'Enable network'		onModel: 1		offModel: 2		applying: [ :theCheckbox | theCheckbox addClass willow ].	checkbox beCustom.	html := self render: checkbox.	self		assert: html		equals:			'<div class="custom-control custom-checkbox willow"><input class="willow custom-control-input" checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/><label for="checkbox-id1" class="custom-control-label">Enable network</label></div>'!

testRenderingWithLabelAsSwitch	| html checkbox |	checkbox := Bootstrap4CheckboxWebView		labeled: 'Enable network'		onModel: 1		offModel: 2		applying: [ :theCheckbox | theCheckbox addClass willow ].	checkbox beSwitch.	html := self render: checkbox.	self		assert: html		equals:			'<div class="custom-control custom-switch willow"><input class="willow custom-control-input" checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/><label for="checkbox-id1" class="custom-control-label">Enable network</label></div>'!

testWithNonBooleanModels	| html checkbox |	checkbox := Bootstrap4CheckboxWebView onModel: 1 offModel: 2.	html := self render: checkbox.	self		assert: html			equals:			'<div class="form-check"><input class="form-check-input position-static" checked name="1" type="checkbox"/><input name="2" type="hidden"/></div>';		assert: checkbox currentSelection equals: 1.	checkbox toggleCurrentSelection.	html := self render: checkbox.	self		assert: html			equals:			'<div class="form-check"><input class="form-check-input position-static" name="1" type="checkbox"/><input name="2" type="hidden"/></div>';		assert: checkbox currentSelection equals: 2! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #newBinaryChoiceView!instance creation!public! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #testOnTrigger!public!tests/configuring! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #testRenderingAfterUpdatingModel!public!tests/rendering! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #testRenderingWithLabel!public!tests/rendering! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #testRenderingWithLabelAndCustomStyle!public!tests/rendering! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #testRenderingWithLabelAsSwitch!public!tests/rendering! !
!Bootstrap4CheckboxWebViewTest categoriesFor: #testWithNonBooleanModels!public!tests/rendering! !

