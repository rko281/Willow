"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #JQuery3FileMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3FileMetadataLibraryTest guid: (GUID fromString: '{3e311e01-f9fb-4bf8-bd94-e55dc8ff20b4}')!
JQuery3FileMetadataLibraryTest comment: ''!
!JQuery3FileMetadataLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3FileMetadataLibraryTest methodsFor!

testForDeployment	self assert: JQuery3MetadataLibrary forDeployment equals: JQuery3DeploymentMetadataLibrary!

testForDevelopment	self assert: JQuery3MetadataLibrary forDevelopment equals: JQuery3DevelopmentMetadataLibrary!

testLibraryName	self assert: JQuery3MetadataLibrary libraryName equals: 'jQuery'!

testVersion	self assert: JQuery3MetadataLibrary version equals: '3.4.1'!

testVersionCompatibility	self		assert: JQuery3DeploymentMetadataLibrary version equals: JQuery3DevelopmentMetadataLibrary version;		assert: JQuery3DeploymentMetadataLibrary version equals: JQuery3OnlineLibrary default version! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testForDeployment!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testForDevelopment!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testLibraryName!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testVersion!public!tests! !
!JQuery3FileMetadataLibraryTest categoriesFor: #testVersionCompatibility!public!tests! !

