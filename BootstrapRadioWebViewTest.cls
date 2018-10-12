"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewTest subclass: #BootstrapRadioWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapRadioWebViewTest guid: (GUID fromString: '{d59089d2-696c-47f4-babd-2dd77e976593}')!
BootstrapRadioWebViewTest comment: ''!
!BootstrapRadioWebViewTest categoriesForClass!Willow-Bootstrap-Tests-WebViews! !
!BootstrapRadioWebViewTest methodsFor!

newSingleSelectionView	^BootstrapRadioWebView 		renderingWith: #'yourself'		applyingToLabel: [:radio | ]		applyingToInput: []!

testIdentifyIn	| radioGroup html identifier |	radioGroup := BootstrapRadioWebView		renderingWith: [ :element | element asUppercase ]		applyingToLabel: [ :radio | radio addClass disabledComponent ]		applyingToInput: [ :radio | radio addClass disabledComponent ].	radioGroup allowAnyOf: 'abc'.	html := self		renderUsing: [ :canvas | 			identifier := radioGroup identifyIn: canvas.			canvas render: radioGroup ].	self		assert: html			equals:			'<label class="willow-disabled-component"><input name="2" id="radio-button-id1" class="willow-disabled-component" value="1" type="radio"/>A</label><label class="willow-disabled-component"><input name="2" id="radio-button-id1" class="willow-disabled-component" value="2" type="radio"/>B</label><label class="willow-disabled-component"><input name="2" id="radio-button-id1" class="willow-disabled-component" value="3" type="radio"/>C</label>';		assert: identifier equals: 'radio-button-id1'!

testOnTrigger	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup onTrigger disable.	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" id="input-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="input-id3" value="2" type="radio"/>CABA</label><script type="text/javascript">$("#input-id2").change(function(event){$(this).prop("disabled",true)});$("#input-id3").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOnWithElements	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" value="1" type="radio"/>Buenos Aires</label><label><input name="1" value="2" type="radio"/>CABA</label>'!

testRenderContentOnWithElementsAndSomethingSelected	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup chooseAnySatisfying: [ :place | true ] ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" checked="checked" value="1" type="radio"/>Buenos Aires</label><label><input name="1" value="2" type="radio"/>CABA</label>'.	radioGroup chooseAnySatisfying: [ :place | place beginsWith: 'C' ] ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" value="1" type="radio"/>Buenos Aires</label><label><input name="1" checked="checked" value="2" type="radio"/>CABA</label>'!

testRenderingWhenEmptyDoesNotProduceHTMLContent	| radioGroup html |	radioGroup := self newSingleSelectionView.	html := self render: radioGroup.	self assert: html isEmpty!

testRenderingWithApplying	| radioGroup html |	radioGroup := BootstrapRadioWebView 		renderingWith: [ :element | element asUppercase ]		applyingToLabel: [ :radio | radio addClass disabledComponent ]		applyingToInput:  [ :radio | radio addClass disabledComponent ].	radioGroup allowAnyOf: #($a $b).	html := self render: radioGroup.	self		assert: html		equals:			'<label class="willow-disabled-component"><input name="1" class="willow-disabled-component" value="1" type="radio"/>A</label><label class="willow-disabled-component"><input name="1" class="willow-disabled-component" value="2" type="radio"/>B</label>'! !
!BootstrapRadioWebViewTest categoriesFor: #newSingleSelectionView!public!support! !
!BootstrapRadioWebViewTest categoriesFor: #testIdentifyIn!public!tests/rendering! !
!BootstrapRadioWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!BootstrapRadioWebViewTest categoriesFor: #testRenderContentOnWithElements!public!tests/rendering! !
!BootstrapRadioWebViewTest categoriesFor: #testRenderContentOnWithElementsAndSomethingSelected!public!tests/rendering! !
!BootstrapRadioWebViewTest categoriesFor: #testRenderingWhenEmptyDoesNotProduceHTMLContent!public!tests/rendering! !
!BootstrapRadioWebViewTest categoriesFor: #testRenderingWithApplying!public!tests/rendering! !

