"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewTest subclass: #Bootstrap3RadioWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3RadioWebViewTest guid: (GUID fromString: '{a4a59f93-70f8-4704-9e2a-c16868c4b816}')!
Bootstrap3RadioWebViewTest comment: ''!
!Bootstrap3RadioWebViewTest categoriesForClass!Willow-Bootstrap-3-Tests-WebViews! !
!Bootstrap3RadioWebViewTest methodsFor!

newSingleSelectionView	^Bootstrap3RadioWebView 		renderingWith: #'yourself'		applyingToLabel: [:radio | ]		applyingToInput: []!

testOnTrigger	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup onTrigger disable.	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label><script type="text/javascript">$("#radio-button-id2").change(function(event){$(this).prop("disabled",true)});$("#radio-button-id3").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOnWithElements	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label>'!

testRenderContentOnWithElementsAndSomethingSelected	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup chooseAnySatisfying: [ :place | true ] ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" id="radio-button-id2" checked value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label>'.	radioGroup chooseAnySatisfying: [ :place | place beginsWith: 'C' ] ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<label><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label><input name="1" id="radio-button-id3" checked value="2" type="radio"/>CABA</label>'!

testRenderingWhenEmptyDoesNotProduceHTMLContent	| radioGroup html |	radioGroup := self newSingleSelectionView.	html := self render: radioGroup.	self assert: html isEmpty!

testRenderingWithApplying	| radioGroup html |	radioGroup := Bootstrap3RadioWebView		renderingWith: [ :element | element asUppercase ]		applyingToLabel: [ :radio | radio addClass disabledComponent ]		applyingToInput: [ :radio | radio addClass disabledComponent ].	radioGroup allowAnyOf: #($a $b).	html := self render: radioGroup.	self		assert: html		equals:			'<label class="willow-disabled-component"><input name="1" id="radio-button-id2" class="willow-disabled-component" value="1" type="radio"/>A</label><label class="willow-disabled-component"><input name="1" id="radio-button-id3" class="willow-disabled-component" value="2" type="radio"/>B</label>'! !
!Bootstrap3RadioWebViewTest categoriesFor: #newSingleSelectionView!public!support! !
!Bootstrap3RadioWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!Bootstrap3RadioWebViewTest categoriesFor: #testRenderContentOnWithElements!public!tests/rendering! !
!Bootstrap3RadioWebViewTest categoriesFor: #testRenderContentOnWithElementsAndSomethingSelected!public!tests/rendering! !
!Bootstrap3RadioWebViewTest categoriesFor: #testRenderingWhenEmptyDoesNotProduceHTMLContent!public!tests/rendering! !
!Bootstrap3RadioWebViewTest categoriesFor: #testRenderingWithApplying!public!tests/rendering! !

