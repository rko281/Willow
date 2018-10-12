"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CircularIterator
	instanceVariableNames: 'options currentIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CircularIterator guid: (GUID fromString: '{5d28c7ed-b00b-41c2-8c00-966ac76e7a61}')!
CircularIterator comment: 'I''m a circular iterator allowing to cycle between a number of options.Implementation Notes:	To ease the rollover I keep the current index in a zero-based fashion to use module arithmetics to perform the rollover.'!
!CircularIterator categoriesForClass!Buoy-Collections! !
!CircularIterator methodsFor!

current	^options at: currentIndex + 1!

includes: anObject	^options includes: anObject  !

initializeCyclingOver: anArray	options := anArray.	self reset!

next	currentIndex := (currentIndex + 1) \\ options size.	^self current !

reset	currentIndex := 0! !
!CircularIterator categoriesFor: #current!accessing!public! !
!CircularIterator categoriesFor: #includes:!public!Testing! !
!CircularIterator categoriesFor: #initializeCyclingOver:!initialization!public! !
!CircularIterator categoriesFor: #next!iterating!public! !
!CircularIterator categoriesFor: #reset!iterating!public! !

!CircularIterator class methodsFor!

cyclingOver: aSequentiableCollection	AssertionChecker		enforce: [ aSequentiableCollection notEmpty ]		because: 'It makes no sense to iterate in a cyclic way an empty collection'		raising: InstanceCreationFailed.			^ self new initializeCyclingOver: aSequentiableCollection asArray! !
!CircularIterator class categoriesFor: #cyclingOver:!Instance Creation!public! !

