"Filed out from Dolphin Smalltalk 7"!

BinaryChoiceWebViewTest subclass: #CheckboxWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CheckboxWebViewTest guid: (GUID fromString: '{d6a35c6b-adac-4960-ae11-d825f8a90cdc}')!
CheckboxWebViewTest comment: 'A CheckboxWebViewTest is a test class for testing the behavior of CheckboxWebView'!
!CheckboxWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!CheckboxWebViewTest methodsFor!

newBinaryChoiceView	^ CheckboxWebView onModel: true offModel: false!

testIdentifyIn	| html checkbox |	checkbox := self newBinaryChoiceView.	html := self		renderUsing: [ :canvas | 			checkbox identifyIn: canvas.			canvas render: checkbox ].	self		assert: html equals: '<input checked name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/>';		assert: checkbox identifier equals: 'checkbox-id1'!

testOnTrigger	| html binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	binaryChoiceView onTrigger disable.	html := self render: binaryChoiceView.	self		assert: html		equals:			'<input checked name="1" id="input-id2" type="checkbox"/><input name="3" type="hidden"/><script type="text/javascript">$("#input-id2").click(function(event){$(this).prop("disabled",true)});</script>'!

testRenderingAfterUpdatingModel	| html checkbox |	checkbox := CheckboxWebView onModel: 1 offModel: 2 applying: [ :theCheckbox | theCheckbox addClass willow ].	checkbox selectOffModel.	html := self render: checkbox.	self assert: html equals: '<input class="willow" name="1" type="checkbox"/><input name="2" type="hidden"/>'.	checkbox selectOnModel.	html := self render: checkbox.	self assert: html equals: '<input class="willow" checked name="1" type="checkbox"/><input name="2" type="hidden"/>'!

testRenderingWithLabel	| html checkbox |	checkbox := CheckboxWebView		labeled: 'Enable network'		onModel: 1		offModel: 2		applying: [ :theCheckbox | theCheckbox addClass willow ].	html := self render: checkbox.	self assert: html equals: '<input class="willow" checked name="1" id="checkbox-id2" type="checkbox"/><input name="3" type="hidden"/><label for="checkbox-id2">Enable network</label>'!

testWithNonBooleanModels	| html checkbox |	checkbox := CheckboxWebView onModel: 1 offModel: 2.	html := self render: checkbox.	self		assert: html equals: '<input checked name="1" type="checkbox"/><input name="2" type="hidden"/>';		assert: checkbox currentSelection equals: 1.	checkbox toggleCurrentSelection.	html := self render: checkbox.	self		assert: html equals: '<input name="1" type="checkbox"/><input name="2" type="hidden"/>';		assert: checkbox currentSelection equals: 2! !
!CheckboxWebViewTest categoriesFor: #newBinaryChoiceView!instance creation!public! !
!CheckboxWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!CheckboxWebViewTest categoriesFor: #testOnTrigger!public!tests/configuring! !
!CheckboxWebViewTest categoriesFor: #testRenderingAfterUpdatingModel!public!tests/rendering! !
!CheckboxWebViewTest categoriesFor: #testRenderingWithLabel!public!tests/rendering! !
!CheckboxWebViewTest categoriesFor: #testWithNonBooleanModels!public!tests/rendering! !

