"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WADeploymentAwareFileMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeploymentAwareFileMetadataLibraryTest guid: (GUID fromString: '{56f193f7-6f1e-4296-88e8-19369b51b9f8}')!
WADeploymentAwareFileMetadataLibraryTest comment: 'A WillowFileMetadataLibraryTest is a test class for testing the behavior of WillowFileMetadataLibrary'!
!WADeploymentAwareFileMetadataLibraryTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WADeploymentAwareFileMetadataLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: WATestingFileMetadataDeploymentLibrary default		createsAsFolders: #('testing-0.0.0' 'testing-0.0.0/js')		andFileContentsMatching: {('testing-0.0.0/js/undefined.js' -> 'd5d4cd07616a542891b7ec2d0257b3a24b69856e')}!

testDeployFilesWhenFileNotMatches	self		should: [ self				assertFileDeploymentOf: WATestingFileMetadataDeploymentLibrary default				createsAsFolders: #('testing-0.0.0/js')				andFileContentsMatching: {('testing-0.0.0/js/undefinedBad.js' -> 'd5d4cd07616a542891b7ec2d0257b3a24b69856e')} ]		raise: self class classForTestResult failure!

testDeployFilesWhenFolderIsMissing	self		should: [ self				assertFileDeploymentOf: WATestingFileMetadataDeploymentLibrary default				createsAsFolders: #('testing-0.0.0/js')				andFileContentsMatching: {('testing-0.0.0/js/undefined.js' -> 'd5d4cd07616a542891b7ec2d0257b3a24b69856e')} ]		raise: self class classForTestResult failure!

testDeployFilesWithInvalidHash	self		should: [ self				assertFileDeploymentOf: WATestingFileMetadataDeploymentLibrary default				createsAsFolders: #('testing-0.0.0' 'testing-0.0.0/js')				andFileContentsMatching: {('testing-0.0.0/js/undefined.js' -> '000000000000000000000')} ]		raise: self class classForTestResult failure!

testForDeployment	self assert: WATestingFileMetadataLibrary forDeployment equals: WATestingFileMetadataDeploymentLibrary!

testForDevelopment	self assert: WATestingFileMetadataLibrary forDevelopment equals: WATestingFileMetadataDevelopmentLibrary!

testHandlesFolder	self deny: (WADeploymentAwareFileMetadataLibrary handlesFolder: #folder)!

testJavascriptGeneration	self assert: WATestingFileMetadataDeploymentLibrary default jsUndefinedJsContent equals: 'undefined'!

testLibraryName	self assert: WATestingFileMetadataLibrary libraryName equals: 'testing'! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testDeployFilesWhenFileNotMatches!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testDeployFilesWhenFolderIsMissing!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testDeployFilesWithInvalidHash!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testForDeployment!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testForDevelopment!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testHandlesFolder!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testJavascriptGeneration!public!tests! !
!WADeploymentAwareFileMetadataLibraryTest categoriesFor: #testLibraryName!public!tests! !

