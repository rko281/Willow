"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #Bootstrap3MetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3MetadataLibraryTest guid: (GUID fromString: '{d8633dcf-02fe-4d77-9ace-145cbed751a1}')!
Bootstrap3MetadataLibraryTest comment: 'A Bootstrap3MetadataLibraryTest is a test class for testing the behavior of Bootstrap3MetadataLibrary'!
!Bootstrap3MetadataLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Libraries! !
!Bootstrap3MetadataLibraryTest methodsFor!

testForDeployment	self assert: Bootstrap3MetadataLibrary forDeployment equals: Bootstrap3DeploymentMetadataLibrary!

testForDevelopment	self assert: Bootstrap3MetadataLibrary forDevelopment equals: Bootstrap3DevelopmentMetadataLibrary!

testVersionCompatibility	self		assert: Bootstrap3DeploymentMetadataLibrary version equals: Bootstrap3DevelopmentMetadataLibrary version;		assert: Bootstrap3DeploymentMetadataLibrary version equals: Bootstrap3OnlineLibrary default version! !
!Bootstrap3MetadataLibraryTest categoriesFor: #testForDeployment!public!tests! !
!Bootstrap3MetadataLibraryTest categoriesFor: #testForDevelopment!public!tests! !
!Bootstrap3MetadataLibraryTest categoriesFor: #testVersionCompatibility!public!tests! !

