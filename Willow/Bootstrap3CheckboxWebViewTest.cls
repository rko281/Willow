"Filed out from Dolphin Smalltalk 7"!

BinaryChoiceWebViewTest subclass: #Bootstrap3CheckboxWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3CheckboxWebViewTest guid: (GUID fromString: '{52acc4db-d483-45a6-a9ff-02a3063cfde8}')!
Bootstrap3CheckboxWebViewTest comment: ''!
!Bootstrap3CheckboxWebViewTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3CheckboxWebViewTest methodsFor!

newBinaryChoiceView	^ Bootstrap3CheckboxWebView onModel: true offModel: false!

testIdentifyIn	| html checkbox |	checkbox := self newBinaryChoiceView.	html := self		renderUsing: [ :canvas | 			checkbox identifyIn: canvas.			canvas render: checkbox ].	self		assert: html			equals:			'<div class="checkbox"><label><input checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/></label></div>';		assert: checkbox identifier equals: 'checkbox-id1'!

testOnTrigger	| html binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	binaryChoiceView onTrigger disable.	html := self render: binaryChoiceView.	self		assert: html		equals:			'<div class="checkbox"><label><input checked name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/></label></div><script type="text/javascript">$("#input-id2").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderingAfterUpdatingModel	| html checkbox |	checkbox := Bootstrap3CheckboxWebView onModel: 1 offModel: 2 applying: [ :theCheckbox | theCheckbox addClass willow ].	checkbox selectOffModel.	html := self render: checkbox.	self		assert: html		equals: '<div class="checkbox willow"><label><input class="willow" name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'.	checkbox selectOnModel.	html := self render: checkbox.	self		assert: html		equals: '<div class="checkbox willow"><label><input class="willow" checked name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>'!

testRenderingWithLabel	| html checkbox |	checkbox := Bootstrap3CheckboxWebView		labeled: 'Enable network'		onModel: 1		offModel: 2		applying: [ :theCheckbox | theCheckbox addClass willow ].	html := self render: checkbox.	self		assert: html		equals:			'<div class="checkbox willow"><label><input class="willow" checked name="1" type="checkbox"/><input name="2" type="hidden"/>Enable network</label></div>'!

testWithNonBooleanModels	| html checkbox |	checkbox := Bootstrap3CheckboxWebView onModel: 1 offModel: 2.	html := self render: checkbox.	self		assert: html			equals:			'<div class="checkbox"><label><input checked name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';		assert: checkbox currentSelection equals: 1.	checkbox toggleCurrentSelection.	html := self render: checkbox.	self		assert: html			equals:			'<div class="checkbox"><label><input name="1" type="checkbox"/><input name="2" type="hidden"/></label></div>';		assert: checkbox currentSelection equals: 2! !
!Bootstrap3CheckboxWebViewTest categoriesFor: #newBinaryChoiceView!instance creation!public! !
!Bootstrap3CheckboxWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!Bootstrap3CheckboxWebViewTest categoriesFor: #testOnTrigger!public!tests/configuring! !
!Bootstrap3CheckboxWebViewTest categoriesFor: #testRenderingAfterUpdatingModel!public!tests/rendering! !
!Bootstrap3CheckboxWebViewTest categoriesFor: #testRenderingWithLabel!public!tests/rendering! !
!Bootstrap3CheckboxWebViewTest categoriesFor: #testWithNonBooleanModels!public!tests/rendering! !

