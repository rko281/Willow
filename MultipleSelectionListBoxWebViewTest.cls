"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #MultipleSelectionListBoxWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MultipleSelectionListBoxWebViewTest guid: (GUID fromString: '{542a92fe-32bc-4799-8ac4-c8e5d0f21e5b}')!
MultipleSelectionListBoxWebViewTest comment: 'A MultipleSelectionListBoxWebViewTest is a test class for testing the behavior of MultipleSelectionListBoxWebView'!
!MultipleSelectionListBoxWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!MultipleSelectionListBoxWebViewTest methodsFor!

changeNotifiedBy: aDropDownListWebView 		notificationWasReceived := true!

newListBox	^ MultipleSelectionListBoxWebView applying: [ :listBox |  ]!

testAllowsAnySatisfying	| listBox |	listBox := self newListBox.	self deny: (listBox allowsAnySatisfying: [ :element | true ]).	listBox allowAnyOf: #(1 2 3 4).	self		assert: (listBox allowsAnySatisfying: [ :element | element even ]);		deny: (listBox allowsAnySatisfying: [ :element | element isZero ])!

testChooseAll	| listBox |	listBox := self newListBox.	listBox allowAnyOf: #(1).	listBox notifyChangesTo: self.	listBox chooseAll.	notificationWasReceived := false.	self assert: listBox currentSelection equals: #(1).	listBox allowAnyOf: #(2 4 3 1).	self assert: notificationWasReceived.	listBox chooseAll.	self		assert: notificationWasReceived;		assert: listBox currentSelection equals: #(2 4 3 1)!

testChooseAllIn	| listBox |	listBox := self newListBox.	listBox allowAnyOf: #(1).	listBox notifyChangesTo: self.	listBox chooseAllIn: #(1).	notificationWasReceived := false.	self assert: listBox currentSelection equals: #(1).	listBox allowAnyOf: #(2 4 3 1).	self assert: notificationWasReceived.	self assert: listBox currentSelection equals: #(1)!

testChooseAllInWhenNotAvailable	| listBox |	listBox := self newListBox.	listBox allowAnyOf: #(1).	listBox notifyChangesTo: self.	listBox chooseAllIn: #(1).	notificationWasReceived := false.	self assert: listBox currentSelection equals: #(1).	listBox allowAnyOf: #(2 4).	self assert: notificationWasReceived.	self assert: listBox currentSelection isEmpty!

testChooseAllMatching	| listBox |	listBox := self newListBox.	listBox allowAnyOf: #(2 4 3 1).	listBox chooseAllMatching: [ :element | element even ].	self assert: listBox currentSelection equals: #(2 4)!

testIdentifyIn	| listBox html |	listBox := self newListBox.	html := self		renderUsing: [ :canvas | 			listBox identifyIn: canvas.			canvas render: listBox ].	self		assert: html equals: '<select name="2" id="list-box-id1" multiple="multiple"></select><input name="3" type="hidden"/>';		assert: listBox identifier equals: 'list-box-id1'!

testNotifyChangesTo	| singleSelectionView |	singleSelectionView := self newListBox.	singleSelectionView notifyChangesTo: self.	notificationWasReceived := false.	singleSelectionView disallowAll.	self assert: notificationWasReceived!

testNotifyChangesWhenSelectionChanged	| listBox |	listBox := self newListBox.	listBox allowAnyOf: #(1).	listBox notifyChangesTo: self.	notificationWasReceived := false.	listBox chooseAllIn: #(1).	self assert: listBox currentSelection equals: #(1).	self assert: notificationWasReceived!

testNotifyChangesWhenSelectionDoesNotChange	| listBox |	listBox := self newListBox.	listBox allowAnyOf: #(1).	listBox notifyChangesTo: self.	notificationWasReceived := false.	listBox chooseAllIn: #().	self		assert: notificationWasReceived;		assert: listBox currentSelection isEmpty!

testOnTrigger	| listBox html |	listBox := self newListBox.	listBox onTrigger disable.	html := self render: listBox.	self		assert: html		equals:			'<select name="1" id="select-id2" multiple="multiple"></select><input name="3" type="hidden"/><script type="text/javascript">$("#select-id2").change(function(event){$(this).prop("disabled",true)});</script>'!

testRenderContentOn	| listBox html |	listBox := self newListBox.	html := self render: listBox.	self assert: html equals: '<select name="1" multiple="multiple"></select><input name="2" type="hidden"/>'!

testRenderContentOnWithCommands	| listBox html |	listBox := MultipleSelectionListBoxWebView applying: [ :command | command addClass willow ].	html := self render: listBox.	self assert: html equals: '<select name="1" class="willow" multiple="multiple"></select><input name="2" type="hidden"/>'!

testRenderContentOnWithElements	| listBox html |	listBox := self newListBox.	listBox allowAnyOf: #('One' 'Two' 'Three').	html := self render: listBox.	self assert: html equals: '<select name="1" multiple="multiple"><option value="1">One</option><option value="2">Two</option><option value="3">Three</option></select><input name="2" type="hidden"/>'!

testRenderContentOnWithElementsAndSomethingSelected	| listBox html |	listBox := self newListBox.	listBox allowAnyOf: #('One' 'Two' 'Three').	listBox chooseAllIn: #('Two' 'Three').	html := self render: listBox.	self		assert: html		equals:			'<select name="1" multiple="multiple"><option value="1">One</option><option value="2" selected="selected">Two</option><option value="3" selected="selected">Three</option></select><input name="2" type="hidden"/>'! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #changeNotifiedBy:!public!support! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #newListBox!public!support! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testAllowsAnySatisfying!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testChooseAll!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testChooseAllIn!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testChooseAllInWhenNotAvailable!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testChooseAllMatching!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testIdentifyIn!public!tests! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testNotifyChangesTo!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testNotifyChangesWhenSelectionChanged!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testNotifyChangesWhenSelectionDoesNotChange!public!tests/Multiple Selection/API! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testOnTrigger!public!tests/rendering! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOn!public!tests/rendering! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOnWithCommands!public!tests/rendering! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOnWithElements!public!tests/rendering! !
!MultipleSelectionListBoxWebViewTest categoriesFor: #testRenderContentOnWithElementsAndSomethingSelected!public!tests/rendering! !

