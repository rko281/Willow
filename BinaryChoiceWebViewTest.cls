"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BinaryChoiceWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BinaryChoiceWebViewTest guid: (GUID fromString: '{e2957e02-202b-4faf-9eb5-abfc38eaa7df}')!
BinaryChoiceWebViewTest comment: 'I''m an abstract test case for views implementing the binary choice  API'!
!BinaryChoiceWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!BinaryChoiceWebViewTest methodsFor!

changeNotifiedBy: aCheckboxWebView 		notificationWasReceived := true!

newBinaryChoiceView	^self subclassResponsibility !

testAllows	| binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	self		assert: (binaryChoiceView allows: true);		assert: (binaryChoiceView allows: false);		deny: (binaryChoiceView allows: 1)!

testControlSelection	| binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	binaryChoiceView selectOffModel.	self deny: binaryChoiceView currentSelection.	binaryChoiceView selectOnModel.	self assert: binaryChoiceView currentSelection.	binaryChoiceView selectOffModel.	self deny: binaryChoiceView currentSelection!

testCurrentSelection	| binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	self assert: binaryChoiceView currentSelection.	binaryChoiceView toggleCurrentSelection.	self deny: binaryChoiceView currentSelection.	binaryChoiceView toggleCurrentSelection.	self assert: binaryChoiceView currentSelection!

testNotifyChangesWhenSelectionChanged	| binaryChoiceView |	binaryChoiceView := self newBinaryChoiceView.	binaryChoiceView notifyChangesTo: self.	notificationWasReceived := false.	binaryChoiceView toggleCurrentSelection.	self assert: notificationWasReceived! !
!BinaryChoiceWebViewTest categoriesFor: #changeNotifiedBy:!public!support! !
!BinaryChoiceWebViewTest categoriesFor: #newBinaryChoiceView!public!support! !
!BinaryChoiceWebViewTest categoriesFor: #testAllows!public!tests/Binary Choice/API! !
!BinaryChoiceWebViewTest categoriesFor: #testControlSelection!public!tests/Binary Choice/API! !
!BinaryChoiceWebViewTest categoriesFor: #testCurrentSelection!public!tests/Binary Choice/API! !
!BinaryChoiceWebViewTest categoriesFor: #testNotifyChangesWhenSelectionChanged!public!tests/Binary Choice/API! !

!BinaryChoiceWebViewTest class methodsFor!

isAbstract	^self name = #BinaryChoiceWebViewTest ! !
!BinaryChoiceWebViewTest class categoriesFor: #isAbstract!public!testing! !

