"Filed out from Dolphin Smalltalk 7"!

BinaryChoiceWebViewTest subclass: #BootstrapCheckboxWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapCheckboxWebViewTest guid: (GUID fromString: '{b1346336-aab3-459d-8215-7ec566e5deea}')!
BootstrapCheckboxWebViewTest comment: ''!
!BootstrapCheckboxWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapCheckboxWebViewTest methodsFor!

newBinaryChoiceView	^ BootstrapCheckboxWebView onModel: true offModel: false!

testIdentifyIn	| html checkbox |	checkbox := self newBinaryChoiceView.	html := self		renderUsing: [ :canvas | 			checkbox identifyIn: canvas.			canvas render: checkbox ].	self		assert: html			equals:			'<div class="checkbox"><label><input checked="checked" name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/></label></div>';		assert: checkbox identifier equals: 'checkbox-id1'!

testOnTrigger	| html binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	binaryChoiceView onTrigger disable.	html := self render: binaryChoiceView.	self		assert: html		equals:			'<div class="checkbox"><label><input checked="checked" name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/></label></div><script type="text/javascript">$("#input-id2").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderingAfterUpdatingModel	| html checkbox |	checkbox := BootstrapCheckboxWebView onModel: 1 offModel: 2 applying: [ :theCheckbox | theCheckbox addClass willow ].	checkbox selectOffModel.	html := self render: checkbox.	self		assert: html		equals: '<div class="checkbox willow"><label><input class="willow" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'.	checkbox selectOnModel.	html := self render: checkbox.	self		assert: html		equals: '<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'!

testRenderingWithLabel	| html checkbox |	checkbox := BootstrapCheckboxWebView		labeled: 'Enable network'		onModel: 1		offModel: 2		applying: [ :theCheckbox | theCheckbox addClass willow ].	html := self render: checkbox.	self		assert: html		equals:			'<div class="checkbox willow"><label><input class="willow" checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/>Enable network</label></div>'!

testWithNonBooleanModels	| html checkbox |	checkbox := BootstrapCheckboxWebView onModel: 1 offModel: 2.	html := self render: checkbox.	self		assert: html			equals:			'<div class="checkbox"><label><input checked="checked" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';		assert: checkbox currentSelection equals: 1.	checkbox toggleCurrentSelection.	html := self render: checkbox.	self		assert: html			equals:			'<div class="checkbox"><label><input name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';		assert: checkbox currentSelection equals: 2! !
!BootstrapCheckboxWebViewTest categoriesFor: #newBinaryChoiceView!instance creation!public! !
!BootstrapCheckboxWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!BootstrapCheckboxWebViewTest categoriesFor: #testOnTrigger!public!tests/configuring! !
!BootstrapCheckboxWebViewTest categoriesFor: #testRenderingAfterUpdatingModel!public!tests/rendering! !
!BootstrapCheckboxWebViewTest categoriesFor: #testRenderingWithLabel!public!tests/rendering! !
!BootstrapCheckboxWebViewTest categoriesFor: #testWithNonBooleanModels!public!tests/rendering! !

