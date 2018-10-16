﻿"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #SingleSelectionWebViewTest
	instanceVariableNames: 'notificationWasReceived'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SingleSelectionWebViewTest guid: (GUID fromString: '{dadef886-d57b-423e-9dd7-b356daeeaf58}')!
SingleSelectionWebViewTest comment: 'I''m an abstract test case for views implementing the single selection API'!
!SingleSelectionWebViewTest categoriesForClass!Willow-Tests-WebViews! !
!SingleSelectionWebViewTest methodsFor!

changeNotifiedBy: aDropDownListWebView 

newSingleSelectionView

testAllowsAnySatisfying

testChooseAny

testChooseEqualTo

testNotifyChangesTo

testNotifyChangesWhenAvailableElementsChangeButContainsTheSelectedOne

testNotifyChangesWhenAvailableElementsChangeButDoesNotContainTheSelectedOne

testNotifyChangesWhenSelectionChanged

testNotifyChangesWhenSelectionDoesNotChange

testWithCurrentSelectionDo
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

isAbstract
!SingleSelectionWebViewTest class categoriesFor: #isAbstract!public!testing! !
