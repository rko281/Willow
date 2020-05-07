"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BinaryChoiceWebViewBehavior
	instanceVariableNames: 'interested iterator'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BinaryChoiceWebViewBehavior guid: (GUID fromString: '{d37481d3-1d4b-4158-867c-b28d94de4037}')!
BinaryChoiceWebViewBehavior comment: 'I''m an abstract class representing binary choice web views'!
!BinaryChoiceWebViewBehavior categoriesForClass!Willow-Core-WebViews! !
!BinaryChoiceWebViewBehavior methodsFor!

allows: aModel	^iterator includes: aModel !

currentSelection	^iterator current !

initializeOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff	iterator := CircularIterator		cyclingOver:			{anObjectToUseWhenOn.			anObjectToUseWhenOff}.	interested := Set new!

notifyChangesTo: aSupervisor	interested add: aSupervisor!

notifyInterested	interested do: [ :anInterested | anInterested changeNotifiedBy: self ]!

onTrigger	^ self subclassResponsibility!

renderContentOn: aCanvas	self subclassResponsibility !

selectOffModel	iterator reset.	self toggleCurrentSelection.	self notifyInterested  !

selectOnModel	iterator reset.	self notifyInterested !

toggleCurrentSelection	iterator next.	self notifyInterested  ! !
!BinaryChoiceWebViewBehavior categoriesFor: #allows:!Binary Choice/API!public! !
!BinaryChoiceWebViewBehavior categoriesFor: #currentSelection!Binary Choice/API!public! !
!BinaryChoiceWebViewBehavior categoriesFor: #initializeOnModel:offModel:!initialization!public! !
!BinaryChoiceWebViewBehavior categoriesFor: #notifyChangesTo:!Binary Choice/API!public! !
!BinaryChoiceWebViewBehavior categoriesFor: #notifyInterested!private! !
!BinaryChoiceWebViewBehavior categoriesFor: #onTrigger!configuring!public! !
!BinaryChoiceWebViewBehavior categoriesFor: #renderContentOn:!public!rendering! !
!BinaryChoiceWebViewBehavior categoriesFor: #selectOffModel!Binary Choice/API!public! !
!BinaryChoiceWebViewBehavior categoriesFor: #selectOnModel!Binary Choice/API!public! !
!BinaryChoiceWebViewBehavior categoriesFor: #toggleCurrentSelection!Binary Choice/API!public! !

!BinaryChoiceWebViewBehavior class methodsFor!

onModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff	^self new initializeOnModel: anObjectToUseWhenOn offModel: anObjectToUseWhenOff! !
!BinaryChoiceWebViewBehavior class categoriesFor: #onModel:offModel:!instance creation!public! !

