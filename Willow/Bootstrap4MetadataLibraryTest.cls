"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #Bootstrap4MetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4MetadataLibraryTest guid: (GUID fromString: '{4c500a44-69eb-47e4-beec-143753657d27}')!
Bootstrap4MetadataLibraryTest comment: 'A Bootstrap4MetadataLibraryTest is a test class for testing the behavior of Bootstrap4MetadataLibrary'!
!Bootstrap4MetadataLibraryTest categoriesForClass!Willow-Bootstrap-4-Tests-Libraries! !
!Bootstrap4MetadataLibraryTest methodsFor!

testVersionCompatibility	self		assert: Bootstrap4DeploymentMetadataLibrary version			equals: Bootstrap4DevelopmentMetadataLibrary version;		assert: Bootstrap4DeploymentMetadataLibrary version			equals: Bootstrap4OnlineLibrary default version! !
!Bootstrap4MetadataLibraryTest categoriesFor: #testVersionCompatibility!public!tests! !

