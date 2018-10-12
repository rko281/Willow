"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewTest subclass: #DropDownListWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DropDownListWebViewTest guid: (GUID fromString: '{346573e7-d713-45b9-a692-fbe01033e5dd}')!
DropDownListWebViewTest comment: 'A DropDownListWebViewTest is a test class for testing the behavior of DropDownListWebView'!
!DropDownListWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!DropDownListWebViewTest methodsFor!

newSingleSelectionView	^ DropDownListWebView applying: [  ]!

testIdentifyIn	| dropDownList html |	dropDownList := self newSingleSelectionView.	html := self		renderUsing: [ :canvas | 			dropDownList identifyIn: canvas.			canvas render: dropDownList ].	self		assert: html equals: '<select name="2" id="drop-down-list-id1"></select>';		assert: dropDownList identifier equals: 'drop-down-list-id1'!

testOnTrigger	| dropDownList html |	dropDownList := self newSingleSelectionView.	dropDownList onTrigger disable.	html := self render: dropDownList.	self assert: html equals: '<select name="1" id="select-id2"></select><script type="text/javascript">$("#select-id2").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| dropDownList html |	dropDownList := self newSingleSelectionView.	html := self render: dropDownList.	self assert: html equals: '<select name="1"></select>'!

testRenderContentOnWithCommands	| dropDownList html |	dropDownList := DropDownListWebView applying: [ :dropdown | dropdown addClass willow ].	html := self render: dropDownList.	self assert: html equals: '<select name="1" class="willow"></select>'!

testRenderContentOnWithElements	| dropDownList html |	dropDownList := self newSingleSelectionView.	dropDownList allowAnyOf: #('One' 'Two' 'Three').	html := self render: dropDownList.	self		assert: html		equals:			'<select name="1" id="id2"><option value="1">One</option><option value="2">Two</option><option value="3">Three</option></select><script type="text/javascript">$("#id2").prop("selectedIndex",-1);</script>'!

testRenderContentOnWithElementsAndSomethingSelected	| dropDownList html |	dropDownList := self newSingleSelectionView.	dropDownList allowAnyOf: #('One' 'Two' 'Three').	dropDownList chooseAnySatisfying: [ :element | true ] ifNone: [ self fail ].	html := self render: dropDownList.	self assert: html equals: '<select name="1"><option value="1" selected="selected">One</option><option value="2">Two</option><option value="3">Three</option></select>'! !
!DropDownListWebViewTest categoriesFor: #newSingleSelectionView!public!support! !
!DropDownListWebViewTest categoriesFor: #testIdentifyIn!public!tests/configuring! !
!DropDownListWebViewTest categoriesFor: #testOnTrigger!public!tests/configuring! !
!DropDownListWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!DropDownListWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !
!DropDownListWebViewTest categoriesFor: #testRenderContentOnWithElements!public!tests/rendering! !
!DropDownListWebViewTest categoriesFor: #testRenderContentOnWithElementsAndSomethingSelected!public!tests/rendering! !

