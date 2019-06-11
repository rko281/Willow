"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BinarySearchAlgorithm
	instanceVariableNames: 'start stop searchKeyBlock collection searchKey'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BinarySearchAlgorithm guid: (GUID fromString: '{21aed6fa-1ba4-44a7-951b-e8b93150b6ee}')!
BinarySearchAlgorithm comment: 'I''m an algorithm implementing Binary Search against a sequenceable collection, I will return the insertion index for the provided search key.Instance Variables	collection:		<SequenceableCollection> 		collection is expected to be sorted, I don''t check that because it''s too costly.		It''s not neccesary that collection be a SortedCollection, only that the elements are sorted against the search key.		searchKey:		<Object>	searchKeyBlock:	<Valuable>	start:				<Integer>	stop:				<Integer>'!
!BinarySearchAlgorithm categoriesForClass!Buoy-Collections! !
!BinarySearchAlgorithm methodsFor!

execute	| middleIndex lowIndex highIndex |	lowIndex := start.	highIndex := stop.	[ lowIndex <= highIndex ]		whileTrue: [ middleIndex := ( lowIndex + highIndex ) // 2.			( searchKeyBlock value: ( collection at: middleIndex ) ) <= searchKey				then: [ lowIndex := middleIndex + 1 ]				otherwise: [ highIndex := middleIndex - 1 ]			].	^ lowIndex!

initializeSearchFor: aKey in: aCollection from: theStart to: theEnd using: aMonadycBlock	start := theStart.	stop := theEnd.	searchKeyBlock := aMonadycBlock.	collection := aCollection.	searchKey := aKey! !
!BinarySearchAlgorithm categoriesFor: #execute!execution!public! !
!BinarySearchAlgorithm categoriesFor: #initializeSearchFor:in:from:to:using:!initialization!public! !

!BinarySearchAlgorithm class methodsFor!

defaultStartIndex	^ 1!

searchFor: aKey in: aCollection from: theStart to: theEnd using: aMonadycBlock	^ self new		initializeSearchFor: aKey		in: aCollection		from: theStart		to: theEnd		using: aMonadycBlock!

searchFor: aKey in: aCollection from: startIndex using: aMonadycBlock	^ self		searchFor: aKey		in: aCollection		from: startIndex		to: aCollection size		using: aMonadycBlock!

searchFor: aKey in: aCollection using: aMonadycBlock	^ self		searchFor: aKey		in: aCollection		from: self defaultStartIndex		using: aMonadycBlock! !
!BinarySearchAlgorithm class categoriesFor: #defaultStartIndex!private! !
!BinarySearchAlgorithm class categoriesFor: #searchFor:in:from:to:using:!instance creation!public! !
!BinarySearchAlgorithm class categoriesFor: #searchFor:in:from:using:!instance creation!public! !
!BinarySearchAlgorithm class categoriesFor: #searchFor:in:using:!instance creation!public! !

