"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #JQuery3FileMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3FileMetadataLibraryTest guid: (GUID fromString: '{967cea2a-bce3-459f-b1ae-c0a8763d8220}')!
JQuery3FileMetadataLibraryTest comment: ''!
!JQuery3FileMetadataLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3FileMetadataLibraryTest methodsFor!

testForDeployment	self assert: JQuery3MetadataLibrary forDeployment equals: JQuery3DeploymentMetadataLibrary!

testForDevelopment	self assert: JQuery3MetadataLibrary forDevelopment equals: JQuery3DevelopmentMetadataLibrary!

testLibraryName	self assert: JQuery3MetadataLibrary libraryName equals: 'jQuery'!

testVersion	self assert: JQuery3MetadataLibrary version equals: '3.3.1'!

testVersionCompatibility	self		assert: JQuery3DeploymentMetadataLibrary version equals: JQuery3DevelopmentMetadataLibrary version;		assert: JQuery3DeploymentMetadataLibrary version equals: JQuery3OnlineLibrary default version! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testForDeployment!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testForDevelopment!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testLibraryName!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testVersion!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testVersionCompatibility!public!tests! !

