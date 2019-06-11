"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SingleSelectionWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SingleSelectionWebViewTest guid: (GUID fromString: '{c3127201-440c-4c15-9211-4a3fe2b83bd6}')!
SingleSelectionWebViewTest comment: 'I''m an abstract test case for views implementing the single selection API'!
!SingleSelectionWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!SingleSelectionWebViewTest methodsFor!

changeNotifiedBy: aDropDownListWebView 		notificationWasReceived := true!

newSingleSelectionView	^self subclassResponsibility !

testAllowsAnySatisfying	| singleSelectionView |	singleSelectionView := self newSingleSelectionView.	self deny: (singleSelectionView allowsAnySatisfying: [ :element | true ]).	singleSelectionView allowAnyOf: #(1 2 3 4).	self		assert: (singleSelectionView allowsAnySatisfying: [ :element | element even ]);		deny: (singleSelectionView allowsAnySatisfying: [ :element | element isZero ])!

testChooseAny	| singleSelectionView allowedElements |	singleSelectionView := self newSingleSelectionView.	singleSelectionView chooseAny.	self should: [ singleSelectionView currentSelection ] raise: SelectionIsInvalid.	allowedElements := #(1 2 3 4).	singleSelectionView		allowAnyOf: allowedElements;		chooseAny.	self assert: (allowedElements includes: singleSelectionView currentSelection)!

testChooseEqualTo	| singleSelectionView allowedElements |	singleSelectionView := self newSingleSelectionView.	self should: [ singleSelectionView chooseEqualTo: 3 ] raise: SelectionIsInvalid.	self should: [ singleSelectionView currentSelection ] raise: SelectionIsInvalid.	allowedElements := #(1 2 3 4).	singleSelectionView		allowAnyOf: allowedElements;		chooseEqualTo: 2.	self assert: singleSelectionView currentSelection equals: 2.	singleSelectionView chooseEqualTo: 4.	self assert: singleSelectionView currentSelection equals: 4!

testNotifyChangesTo	| singleSelectionView |	singleSelectionView := self newSingleSelectionView.	singleSelectionView notifyChangesTo: self.	notificationWasReceived := false.	singleSelectionView disallowAll.	self assert: notificationWasReceived!

testNotifyChangesWhenAvailableElementsChangeButContainsTheSelectedOne	| singleSelectionView |	singleSelectionView := self newSingleSelectionView.	singleSelectionView allowAnyOf: #(1).	singleSelectionView notifyChangesTo: self.	singleSelectionView chooseAnySatisfying: [ :element | element = 1 ] ifNone: [ self fail ].	notificationWasReceived := false.	self assert: (singleSelectionView currentSelectionIfNone: [ self fail ]) equals: 1.	singleSelectionView allowAnyOf: #(2 4 3 1).	self assert: notificationWasReceived.	self assert: (singleSelectionView currentSelectionIfNone: [ self fail ]) equals: 1!

testNotifyChangesWhenAvailableElementsChangeButDoesNotContainTheSelectedOne	| singleSelectionView |	singleSelectionView := self newSingleSelectionView.	singleSelectionView allowAnyOf: #(1).	singleSelectionView notifyChangesTo: self.	singleSelectionView chooseAnySatisfying: [ :element | element = 1 ] ifNone: [ self fail ].	notificationWasReceived := false.	self assert: (singleSelectionView currentSelectionIfNone: [ self fail ]) equals: 1.	singleSelectionView allowAnyOf: #(2 4).	self		assert: notificationWasReceived;		assert: (singleSelectionView currentSelectionIfNone: [ 0 ]) equals: 0!

testNotifyChangesWhenSelectionChanged	| singleSelectionView |	singleSelectionView := self newSingleSelectionView.	singleSelectionView allowAnyOf: #(1).	singleSelectionView notifyChangesTo: self.	notificationWasReceived := false.	singleSelectionView chooseAnySatisfying: [ :element | true ] ifNone: [ self fail ].	self assert: (singleSelectionView currentSelectionIfNone: [ self fail ]) equals: 1.	self assert: notificationWasReceived!

testNotifyChangesWhenSelectionDoesNotChange	| singleSelectionView |	singleSelectionView := self newSingleSelectionView.	singleSelectionView allowAnyOf: #(1).	singleSelectionView notifyChangesTo: self.	notificationWasReceived := true.	singleSelectionView chooseAnySatisfying: [ :element | false ] ifNone: [ notificationWasReceived := false ].	self		deny: notificationWasReceived;		assert: (singleSelectionView currentSelectionIfNone: [ 0 ]) equals: 0!

testWithCurrentSelectionDo	| singleSelectionView allowedElements |	singleSelectionView := self newSingleSelectionView.	singleSelectionView withCurrentSelectionDo: [ :selectedElement | self fail ].	allowedElements := #(1 2 3 4).	singleSelectionView		allowAnyOf: allowedElements;		chooseAny.	singleSelectionView withCurrentSelectionDo: [ :selectedElement | self assert: (allowedElements includes: selectedElement) ]! !
!SingleSelectionWebViewTest categoriesFor: #changeNotifiedBy:!public!support! !
!SingleSelectionWebViewTest categoriesFor: #newSingleSelectionView!public!support! !
!SingleSelectionWebViewTest categoriesFor: #testAllowsAnySatisfying!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testChooseAny!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testChooseEqualTo!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testNotifyChangesTo!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testNotifyChangesWhenAvailableElementsChangeButContainsTheSelectedOne!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testNotifyChangesWhenAvailableElementsChangeButDoesNotContainTheSelectedOne!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testNotifyChangesWhenSelectionChanged!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testNotifyChangesWhenSelectionDoesNotChange!public!tests/Single Selection/API! !
!SingleSelectionWebViewTest categoriesFor: #testWithCurrentSelectionDo!public!tests/Single Selection/API! !

!SingleSelectionWebViewTest class methodsFor!

isAbstract	^self name = #SingleSelectionWebViewTest! !
!SingleSelectionWebViewTest class categoriesFor: #isAbstract!public!testing! !

