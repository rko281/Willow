"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAApplicationDeployedTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplicationDeployedTest guid: (GUID fromString: '{a6cbf71b-57cb-46c9-80bc-1e6970582e1b}')!
WAApplicationDeployedTest comment: 'A WillowApplicationDeployedTest is a test class for testing the behavior of WillowApplicationDeployed'!
!WAApplicationDeployedTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WAApplicationDeployedTest methodsFor!

testFilter	| filtered |	filtered := WAApplicationDeployed new filter: WAAbstractFileLibrary libraries.	self		assert: (filtered includes: WATestingFileMetadataDeploymentLibrary);		deny: (filtered includes: WATestingFileMetadataDevelopmentLibrary)!

testLibraryFor	self		assert: (WAApplicationDeployed new libraryFor: WATestingFileMetadataLibrary)		equals: WATestingFileMetadataDeploymentLibrary! !
!WAApplicationDeployedTest categoriesFor: #testFilter!public!tests/accessing! !
!WAApplicationDeployedTest categoriesFor: #testLibraryFor!public!tests/accessing! !

