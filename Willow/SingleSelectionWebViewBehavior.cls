﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SingleSelectionWebViewBehavior
	instanceVariableNames: 'availableElements interested chosenElementOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SingleSelectionWebViewBehavior guid: (GUID fromString: '{6e51f89c-6eb1-4603-ab6f-b88c325b4534}')!
SingleSelectionWebViewBehavior comment: 'I''m an abstract class representing single selection web views'!
!SingleSelectionWebViewBehavior categoriesForClass!Willow-WebViews! !
!SingleSelectionWebViewBehavior methodsFor!

allowAnyOf: anElementCollection

allowsAnySatisfying: aMatchBlock

choose: anElement

chooseAny

chooseAnySatisfying: aMatchBlock ifNone: aBlock

chooseEqualTo: anElement

currentSelection

currentSelectionIfNone: aBlock

disallowAll

initialize

invalidateSelection

notifyChangesTo: aSupervisor

notifyInterested

onTrigger

withCurrentSelectionDo: aBlock
!SingleSelectionWebViewBehavior categoriesFor: #allowAnyOf:!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #allowsAnySatisfying:!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #choose:!private! !
!SingleSelectionWebViewBehavior categoriesFor: #chooseAny!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #chooseAnySatisfying:ifNone:!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #chooseEqualTo:!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #currentSelection!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #currentSelectionIfNone:!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #disallowAll!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #initialize!initialization!public! !
!SingleSelectionWebViewBehavior categoriesFor: #invalidateSelection!private! !
!SingleSelectionWebViewBehavior categoriesFor: #notifyChangesTo:!public!Single Selection/API! !
!SingleSelectionWebViewBehavior categoriesFor: #notifyInterested!private! !
!SingleSelectionWebViewBehavior categoriesFor: #onTrigger!configuring!public! !
!SingleSelectionWebViewBehavior categoriesFor: #withCurrentSelectionDo:!public!Single Selection/API! !

!SingleSelectionWebViewBehavior class methodsFor!

new
!SingleSelectionWebViewBehavior class categoriesFor: #new!instance creation!public! !
