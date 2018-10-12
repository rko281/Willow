"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #SingleSelectionWebViewBehavior
	instanceVariableNames: 'availableElements interested chosenElementOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SingleSelectionWebViewBehavior guid: (GUID fromString: '{6e51f89c-6eb1-4603-ab6f-b88c325b4534}')!
SingleSelectionWebViewBehavior comment: 'I''m an abstract class representing single selection web views'!
!SingleSelectionWebViewBehavior categoriesForClass!Willow-WebViews! !
!SingleSelectionWebViewBehavior methodsFor!

allowAnyOf: anElementCollection	availableElements := anElementCollection.	"Try to keep the current selection, if the new elements includes some object equal to the previous selection make it the chosen one."	self chooseAnySatisfying: [ :element | chosenElementOptional withContentDo: [ :chosenElement | chosenElement = element ] ifUnused: [ false ] ] ifNone: [ self invalidateSelection ]!

allowsAnySatisfying: aMatchBlock	^availableElements anySatisfy: aMatchBlock!

choose: anElement	chosenElementOptional := Optional containing: anElement.	self notifyInterested!

chooseAny	self chooseAnySatisfying: [ :element | true ] ifNone: [  ]!

chooseAnySatisfying: aMatchBlock ifNone: aBlock	availableElements detect: aMatchBlock ifFound: [ :found | self choose: found ] ifNone: aBlock!

chooseEqualTo: anElement	self		chooseAnySatisfying: [ :element | element = anElement ]		ifNone: [ SelectionIsInvalid signal: ('There''s no available object equal to <1p>' expandMacrosWith: anElement) ]!

currentSelection	^ self currentSelectionIfNone: [ SelectionIsInvalid signal: 'Nothing is selected' ]!

currentSelectionIfNone: aBlock	^ chosenElementOptional withContentDo: [ :element | element ] ifUnused: aBlock!

disallowAll	availableElements := #().	self invalidateSelection!

initialize	super initialize.	interested := Set new.	self disallowAll!

invalidateSelection	chosenElementOptional := Optional unusedBecause: 'There''s no element selected'.	self notifyInterested!

notifyChangesTo: aSupervisor	interested add: aSupervisor!

notifyInterested	interested do: [ :anInterested | anInterested changeNotifiedBy: self ]!

onTrigger	^ self subclassResponsibility!

withCurrentSelectionDo: aBlock	^ chosenElementOptional withContentDo: aBlock ifUnused: [  ]! !
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

new	^ super new initialize! !
!SingleSelectionWebViewBehavior class categoriesFor: #new!instance creation!public! !

