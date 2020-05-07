"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BalancedDistributionInBucketsAlgorithm
	instanceVariableNames: 'collection maximumBucketSize'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BalancedDistributionInBucketsAlgorithm guid: (GUID fromString: '{6b093e6b-6b62-44e4-8ca4-7dd37e860cab}')!
BalancedDistributionInBucketsAlgorithm comment: 'I''m an algorithm to distribute in a balanced fashion a number of objects into a maximum number of buckets.I will return the list of computed buckets.Instance Variables	collection:		<SequenceableCollection>	maximumBucketSize:		<Integer>'!
!BalancedDistributionInBucketsAlgorithm categoriesForClass!Buoy-Collections! !
!BalancedDistributionInBucketsAlgorithm methodsFor!

countWithAtLeast: minimumCountPerBacket for: numberOfBuckets	| remainderToDistribute countPerBucket |	remainderToDistribute := self numberOfObjectsToDistribute - ( minimumCountPerBacket * numberOfBuckets ).	countPerBucket := Array new: numberOfBuckets.	1 to: remainderToDistribute do: [ :index | countPerBucket at: index put: minimumCountPerBacket + 1 ].	remainderToDistribute + 1 to: numberOfBuckets do: [ :index | countPerBucket at: index put: minimumCountPerBacket ].	^ countPerBucket!

distributeBalancedIn: numberOfBuckets bucketsAroundOfSize: numberOfObjectsPerBucket	| startIndex countPerBucket |	countPerBucket := self countWithAtLeast: numberOfObjectsPerBucket floor for: numberOfBuckets.	startIndex := 1.	^ countPerBucket		collect: [ :count | 			| bucket |			bucket := collection copyFrom: startIndex to: startIndex + count - 1.			startIndex := startIndex + count.			bucket			]!

distributeIn: bucketCount bucketsOfSize: numberOfObjectsPerBucket	| buckets |	buckets := Array new: bucketCount.	1 to: bucketCount do: [ :index | 		| baseZeroIndex |		baseZeroIndex := ( index - 1 ) * numberOfObjectsPerBucket.		buckets at: index put: ( collection copyFrom: baseZeroIndex + 1 to: baseZeroIndex + numberOfObjectsPerBucket )		].	^ buckets!

execute	| numberOfObjectsPerBucket |	self numberOfObjectsToDistribute = 0		ifTrue: [ ^ #() ].	numberOfObjectsPerBucket := self numberOfObjectsToDistribute / self numberOfBuckets.	^ [ self distributeBalancedIn: self numberOfBuckets bucketsAroundOfSize: numberOfObjectsPerBucket ]		unless: numberOfObjectsPerBucket isInteger		inWhichCase: [ self distributeIn: self numberOfBuckets bucketsOfSize: numberOfObjectsPerBucket ]!

initializeDistributing: aCollection maxPerBucket: aSmallInteger	collection := aCollection.	maximumBucketSize := aSmallInteger!

numberOfBuckets	^((self numberOfObjectsToDistribute + maximumBucketSize - 1) / maximumBucketSize) floor!

numberOfObjectsToDistribute	^collection size! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #countWithAtLeast:for:!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #distributeBalancedIn:bucketsAroundOfSize:!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #distributeIn:bucketsOfSize:!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #execute!execution!public! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #initializeDistributing:maxPerBucket:!initialization!public! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #numberOfBuckets!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #numberOfObjectsToDistribute!private! !

!BalancedDistributionInBucketsAlgorithm class methodsFor!

distributing: aCollection maxPerBucket: aSmallInteger	^ self new initializeDistributing: aCollection maxPerBucket: aSmallInteger! !
!BalancedDistributionInBucketsAlgorithm class categoriesFor: #distributing:maxPerBucket:!instance creation!public! !

