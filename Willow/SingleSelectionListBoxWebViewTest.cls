"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewTest subclass: #SingleSelectionListBoxWebViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SingleSelectionListBoxWebViewTest guid: (GUID fromString: '{a86dc302-4336-4647-bb07-1209ebdfa3cc}')!
SingleSelectionListBoxWebViewTest comment: 'A SingleSelectionListBoxWebViewTest is a test class for testing the behavior of SingleSelectionListBoxWebView'!
!SingleSelectionListBoxWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!SingleSelectionListBoxWebViewTest methodsFor!

newSingleSelectionView	^ SingleSelectionListBoxWebView displayingAtOnce: 5!

testDisplayingAtOnce	self		should: [ SingleSelectionListBoxWebView displayingAtOnce: 1 ] raise: AssertionFailed;		should: [ SingleSelectionListBoxWebView displayingAtOnce: 0 ] raise: AssertionFailed;		should: [ SingleSelectionListBoxWebView displayingAtOnce: -51 ] raise: AssertionFailed!

testIdentifyIn	| listBox html |	listBox := self newSingleSelectionView.	html := self		renderUsing: [ :canvas | 			listBox identifyIn: canvas.			canvas render: listBox ].	self		assert: html equals: '<select name="2" id="list-box-id1" size="5"></select>';		assert: listBox identifier equals: 'list-box-id1'!

testOnTrigger	| listBox html |	listBox := self newSingleSelectionView.	listBox onTrigger disable.	html := self render: listBox.	self		assert: html		equals:			'<select name="1" id="select-id2" size="5"></select><script type="text/javascript">$("#select-id2").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| listBox html |	listBox := self newSingleSelectionView.	html := self render: listBox.	self assert: html equals: '<select name="1" size="5"></select>'!

testRenderContentOnWithCommands	| listBox html |	listBox := SingleSelectionListBoxWebView displayingAtOnce: 10 applying: [ :theListBox | theListBox addClass willow ].	html := self render: listBox.	self assert: html equals: '<select name="1" size="10" class="willow"></select>'!

testRenderContentOnWithElements	| listBox html |	listBox := self newSingleSelectionView.	listBox allowAnyOf: #('One' 'Two' 'Three').	html := self render: listBox.	self		assert: html		equals:			'<select name="1" id="id2" size="5"><option value="1">One</option><option value="2">Two</option><option value="3">Three</option></select><script type="text/javascript">$("#id2").prop("selectedIndex",-1);</script>'!

testRenderContentOnWithElementsAndSomethingSelected	| listBox html |	listBox := self newSingleSelectionView.	listBox allowAnyOf: #('One' 'Two' 'Three').	listBox chooseAnySatisfying: [ :element | true ] ifNone: [ self fail ].	html := self render: listBox.	self		assert: html		equals:			'<select name="1" size="5"><option value="1" selected="selected">One</option><option value="2">Two</option><option value="3">Three</option></select>'! !
!SingleSelectionListBoxWebViewTest categoriesFor: #newSingleSelectionView!instance creation!public! !
!SingleSelectionListBoxWebViewTest categoriesFor: #testDisplayingAtOnce!public!tests! !
!SingleSelectionListBoxWebViewTest categoriesFor: #testIdentifyIn!public!tests! !
!SingleSelectionListBoxWebViewTest categoriesFor: #testOnTrigger!public!tests! !
!SingleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!SingleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !
!SingleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOnWithElements!public!tests/rendering! !
!SingleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOnWithElementsAndSomethingSelected!public!tests/rendering! !

