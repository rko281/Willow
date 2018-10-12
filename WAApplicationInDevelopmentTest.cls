"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAApplicationInDevelopmentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplicationInDevelopmentTest guid: (GUID fromString: '{677f7d14-b5fb-4a23-9f2e-0dee29de0dc9}')!
WAApplicationInDevelopmentTest comment: 'A WillowApplicationInDevelopmentTest is a test class for testing the behavior of WillowApplicationInDevelopment'!
!WAApplicationInDevelopmentTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WAApplicationInDevelopmentTest methodsFor!

testFilter	| filtered |	filtered := WAApplicationInDevelopment new filter: WAAbstractFileLibrary libraries.	self		assert: (filtered includes: WATestingFileMetadataDevelopmentLibrary);		deny: (filtered includes: WATestingFileMetadataDeploymentLibrary)!

testLibraryFor	self		assert: (WAApplicationInDevelopment new libraryFor: WATestingFileMetadataLibrary)		equals: WATestingFileMetadataDevelopmentLibrary! !
!WAApplicationInDevelopmentTest categoriesFor: #testFilter!public!tests/accessing! !
!WAApplicationInDevelopmentTest categoriesFor: #testLibraryFor!public!tests/accessing! !

