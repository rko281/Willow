﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #BalancedDistributionInBucketsAlgorithm
	instanceVariableNames: 'collection maximumBucketSize'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BalancedDistributionInBucketsAlgorithm guid: (GUID fromString: '{6b093e6b-6b62-44e4-8ca4-7dd37e860cab}')!
BalancedDistributionInBucketsAlgorithm comment: 'I''m an algorithm to distribute in a balanced fashion a number of objects into a maximum number of buckets.
!BalancedDistributionInBucketsAlgorithm categoriesForClass!Buoy-Collections! !
!BalancedDistributionInBucketsAlgorithm methodsFor!

countWithAtLeast: minimumCountPerBacket for: numberOfBuckets

distributeBalancedIn: numberOfBuckets bucketsAroundOfSize: numberOfObjectsPerBucket

distributeIn: bucketCount bucketsOfSize: numberOfObjectsPerBucket

execute

initializeDistributing: aCollection maxPerBucket: aSmallInteger

numberOfBuckets

numberOfObjectsToDistribute
!BalancedDistributionInBucketsAlgorithm categoriesFor: #countWithAtLeast:for:!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #distributeBalancedIn:bucketsAroundOfSize:!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #distributeIn:bucketsOfSize:!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #execute!execution!public! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #initializeDistributing:maxPerBucket:!initialization!public! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #numberOfBuckets!private! !
!BalancedDistributionInBucketsAlgorithm categoriesFor: #numberOfObjectsToDistribute!private! !

!BalancedDistributionInBucketsAlgorithm class methodsFor!

distributing: aCollection maxPerBucket: aSmallInteger
!BalancedDistributionInBucketsAlgorithm class categoriesFor: #distributing:maxPerBucket:!instance creation!public! !
