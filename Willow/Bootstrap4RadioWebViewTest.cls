"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewTest subclass: #Bootstrap4RadioWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4RadioWebViewTest guid: (GUID fromString: '{13812d67-6bfd-491e-a3fb-8925f02f2f5e}')!
Bootstrap4RadioWebViewTest comment: ''!
!Bootstrap4RadioWebViewTest categoriesForClass!Willow-Bootstrap-4-Tests-WebViews! !
!Bootstrap4RadioWebViewTest methodsFor!

newSingleSelectionView	^Bootstrap4RadioWebView 		renderingWith: #'yourself'		applyingToLabel: [:radio | ]		applyingToInput: []!

testOnTrigger	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup onTrigger disable.	html := self render: radioGroup.	self		assert: html		equals:			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div><script type="text/javascript">$("#radio-button-id2").change(function(event){$(this).prop("disabled",true)});$("#radio-button-id3").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOnWithElements	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	html := self render: radioGroup.	self		assert: html		equals:			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div>'!

testRenderContentOnWithElementsAndSomethingSelected	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup chooseAnySatisfying: [ :place | true ] ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" checked value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div>'.	radioGroup chooseAnySatisfying: [ :place | place beginsWith: 'C' ] ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<div class="form-check"><input name="1" id="radio-button-id2" class="form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="form-check-label">Buenos Aires</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="form-check-input" checked value="2" type="radio"/><label for="radio-button-id3" class="form-check-label">CABA</label></div>'!

testRenderingWhenEmptyDoesNotProduceHTMLContent	| radioGroup html |	radioGroup := self newSingleSelectionView.	html := self render: radioGroup.	self assert: html isEmpty!

testRenderingWithApplying	| radioGroup html |	radioGroup := Bootstrap4RadioWebView		renderingWith: [ :element | element asUppercase ]		applyingToLabel: [ :radio | radio addClass disabledComponent ]		applyingToInput: [ :radio | radio addClass disabledComponent ].	radioGroup allowAnyOf: #($a $b).	html := self render: radioGroup.	self		assert: html		equals:			'<div class="form-check"><input name="1" id="radio-button-id2" class="willow-disabled-component form-check-input" value="1" type="radio"/><label for="radio-button-id2" class="willow-disabled-component form-check-label">A</label></div><div class="form-check"><input name="1" id="radio-button-id3" class="willow-disabled-component form-check-input" value="2" type="radio"/><label for="radio-button-id3" class="willow-disabled-component form-check-label">B</label></div>'!

testRenderingWithCustomStyle	| radioGroup html |	radioGroup := Bootstrap4RadioWebView		renderingWith: [ :element | element asUppercase ]		applyingToLabel: [ :radio | radio addClass disabledComponent ]		applyingToInput: [ :radio | radio addClass disabledComponent ].	radioGroup beCustom.	radioGroup allowAnyOf: #($a $b).	html := self render: radioGroup.	self		assert: html		equals:			'<div class="custom-control custom-radio"><input name="1" id="radio-button-id2" class="willow-disabled-component custom-control-input" value="1" type="radio"/><label for="radio-button-id2" class="willow-disabled-component custom-control-label">A</label></div><div class="custom-control custom-radio"><input name="1" id="radio-button-id3" class="willow-disabled-component custom-control-input" value="2" type="radio"/><label for="radio-button-id3" class="willow-disabled-component custom-control-label">B</label></div>'! !
!Bootstrap4RadioWebViewTest categoriesFor: #newSingleSelectionView!public!support! !
!Bootstrap4RadioWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!Bootstrap4RadioWebViewTest categoriesFor: #testRenderContentOnWithElements!public!tests/rendering! !
!Bootstrap4RadioWebViewTest categoriesFor: #testRenderContentOnWithElementsAndSomethingSelected!public!tests/rendering! !
!Bootstrap4RadioWebViewTest categoriesFor: #testRenderingWhenEmptyDoesNotProduceHTMLContent!public!tests/rendering! !
!Bootstrap4RadioWebViewTest categoriesFor: #testRenderingWithApplying!public!tests/rendering! !
!Bootstrap4RadioWebViewTest categoriesFor: #testRenderingWithCustomStyle!public!tests/rendering! !

