﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CircularIterator
	instanceVariableNames: 'options currentIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CircularIterator guid: (GUID fromString: '{5d28c7ed-b00b-41c2-8c00-966ac76e7a61}')!
CircularIterator comment: 'I''m a circular iterator allowing to cycle between a number of options.
!CircularIterator categoriesForClass!Buoy-Collections! !
!CircularIterator methodsFor!

current

includes: anObject

initializeCyclingOver: anArray

next

reset
!CircularIterator categoriesFor: #current!accessing!public! !
!CircularIterator categoriesFor: #includes:!public!Testing! !
!CircularIterator categoriesFor: #initializeCyclingOver:!initialization!public! !
!CircularIterator categoriesFor: #next!iterating!public! !
!CircularIterator categoriesFor: #reset!iterating!public! !

!CircularIterator class methodsFor!

cyclingOver: aSequentiableCollection
!CircularIterator class categoriesFor: #cyclingOver:!Instance Creation!public! !
