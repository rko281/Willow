"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewTest subclass: #RadioGroupWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RadioGroupWebViewTest guid: (GUID fromString: '{3f22b0bf-d7af-4ca8-931a-15cdd023e927}')!
RadioGroupWebViewTest comment: 'A RadioGroupWebViewTest is a test class for testing the behavior of RadioGroupWebView'!
!RadioGroupWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!RadioGroupWebViewTest methodsFor!

newSingleSelectionView	^ RadioGroupWebView new!

testOnTrigger	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup onTrigger disable.	html := self render: radioGroup.	self		assert: html		equals:			'<label for="radio-button-id2"><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label for="radio-button-id3"><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label><script type="text/javascript">$("#radio-button-id2").change(function(event){$(this).prop("disabled",true)});$("#radio-button-id3").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOnWithElements	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	html := self render: radioGroup.	self		assert: html		equals:			'<label for="radio-button-id2"><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label for="radio-button-id3"><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label>'!

testRenderContentOnWithElementsAndSomethingSelected	| radioGroup html |	radioGroup := self newSingleSelectionView.	radioGroup allowAnyOf: #('Buenos Aires' 'CABA').	radioGroup		chooseAnySatisfying: [ :place | true ]		ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<label for="radio-button-id2"><input name="1" id="radio-button-id2" checked="checked" value="1" type="radio"/>Buenos Aires</label><label for="radio-button-id3"><input name="1" id="radio-button-id3" value="2" type="radio"/>CABA</label>'.	radioGroup		chooseAnySatisfying: [ :place | place beginsWith: 'C' ]		ifNone: [ self fail ].	html := self render: radioGroup.	self		assert: html		equals:			'<label for="radio-button-id2"><input name="1" id="radio-button-id2" value="1" type="radio"/>Buenos Aires</label><label for="radio-button-id3"><input name="1" id="radio-button-id3" checked="checked" value="2" type="radio"/>CABA</label>'!

testRenderingWhenEmptyDoesNotProduceHTMLContent	| radioGroup html |	radioGroup := self newSingleSelectionView.	html := self render: radioGroup.	self assert: html isEmpty!

testRenderingWithApplying	| radioGroup html |	radioGroup := RadioGroupWebView 		renderingWith:  [ :element | element asUppercase ] 		applyingToLabel: [ :group | group addClass disabledComponent ] 		applyingToInput: [ :group | group addClass disabledComponent ].	radioGroup allowAnyOf: #($a $b).	html := self render: radioGroup.	self		assert: html		equals:			'<label for="radio-button-id2" class="willow-disabled-component"><input name="1" id="radio-button-id2" class="willow-disabled-component" value="1" type="radio"/>A</label><label for="radio-button-id3" class="willow-disabled-component"><input name="1" id="radio-button-id3" class="willow-disabled-component" value="2" type="radio"/>B</label>'! !
!RadioGroupWebViewTest categoriesFor: #newSingleSelectionView!public!support! !
!RadioGroupWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!RadioGroupWebViewTest categoriesFor: #testRenderContentOnWithElements!public!tests/rendering! !
!RadioGroupWebViewTest categoriesFor: #testRenderContentOnWithElementsAndSomethingSelected!public!tests/rendering! !
!RadioGroupWebViewTest categoriesFor: #testRenderingWhenEmptyDoesNotProduceHTMLContent!public!tests/rendering! !
!RadioGroupWebViewTest categoriesFor: #testRenderingWithApplying!public!tests/rendering! !

