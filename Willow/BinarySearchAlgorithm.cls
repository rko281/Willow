﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BinarySearchAlgorithm
	instanceVariableNames: 'start stop searchKeyBlock collection searchKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BinarySearchAlgorithm guid: (GUID fromString: '{21aed6fa-1ba4-44a7-951b-e8b93150b6ee}')!
BinarySearchAlgorithm comment: 'I''m an algorithm implementing Binary Search against a sequenceable collection, I will return the insertion index for the provided search key.
!BinarySearchAlgorithm categoriesForClass!Buoy-Collections! !
!BinarySearchAlgorithm methodsFor!

execute

initializeSearchFor: aKey in: aCollection from: theStart to: theEnd using: aMonadycBlock
!BinarySearchAlgorithm categoriesFor: #execute!execution!public! !
!BinarySearchAlgorithm categoriesFor: #initializeSearchFor:in:from:to:using:!initialization!public! !

!BinarySearchAlgorithm class methodsFor!

defaultStartIndex

searchFor: aKey in: aCollection from: theStart to: theEnd using: aMonadycBlock

searchFor: aKey in: aCollection from: startIndex using: aMonadycBlock

searchFor: aKey in: aCollection using: aMonadycBlock
!BinarySearchAlgorithm class categoriesFor: #defaultStartIndex!private! !
!BinarySearchAlgorithm class categoriesFor: #searchFor:in:from:to:using:!instance creation!public! !
!BinarySearchAlgorithm class categoriesFor: #searchFor:in:from:using:!instance creation!public! !
!BinarySearchAlgorithm class categoriesFor: #searchFor:in:using:!instance creation!public! !
