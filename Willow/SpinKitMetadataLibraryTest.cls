"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitMetadataLibraryTest guid: (GUID fromString: '{e9d33052-c50e-4aaa-9b69-c2c8e61c7397}')!
SpinKitMetadataLibraryTest comment: 'A SpinKitMetadataLibraryTest is a test class for testing the behavior of SpinKitMetadataLibrary'!
!SpinKitMetadataLibraryTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitMetadataLibraryTest methodsFor!

testForDevelopmentAndDeployment	self		assert: SpinKitMetadataLibrary forDeployment equals: SpinKitDeploymentMetadataLibrary;		assert: SpinKitMetadataLibrary forDevelopment equals: SpinKitDevelopmentMetadataLibrary!

testIsForDevelopmentAndDeployment	self		assert: SpinKitMetadataLibrary forDeployment isForDeployment;		assert: SpinKitMetadataLibrary forDevelopment isForDevelopment;		deny: SpinKitMetadataLibrary forDevelopment isForDeployment;		deny: SpinKitMetadataLibrary forDeployment isForDevelopment! !
!SpinKitMetadataLibraryTest categoriesFor: #testForDevelopmentAndDeployment!public!tests! !
!SpinKitMetadataLibraryTest categoriesFor: #testIsForDevelopmentAndDeployment!public!tests! !

