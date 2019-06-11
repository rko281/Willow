"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WAFileTestingPlatformTest
	instanceVariableNames: 'testingPlatform'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileTestingPlatformTest guid: (GUID fromString: '{e6c904d6-692e-4f98-b45c-00b75b4a9928}')!
WAFileTestingPlatformTest comment: 'I''m a test for WAFileTestingPlatform'!
!WAFileTestingPlatformTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WAFileTestingPlatformTest methodsFor!

setUp	super setUp.	testingPlatform := WAFileTestingPlatform wrapping: GRPlatform current!

testFileLibrary	self		assert: testingPlatform createdFiles isEmpty;		assert: testingPlatform createdFolders isEmpty.	self		assert: (testingPlatform ensureExistenceOfFolder: 'project/source');		assert: (testingPlatform ensureExistenceOfFolder: 'folder').	self		assertCollection: testingPlatform createdFolders		equals: #('folder' 'project/source').	testingPlatform write: '' toFile: 'example.txt' inFolder: 'folder'.	self assertCollection: testingPlatform createdFiles equals: #('folder/example.txt')!

testLabel	self assert: testingPlatform label equals: 'File Testing Wrapper'! !
!WAFileTestingPlatformTest categoriesFor: #setUp!initialization!public! !
!WAFileTestingPlatformTest categoriesFor: #testFileLibrary!public!tests! !
!WAFileTestingPlatformTest categoriesFor: #testLabel!public!tests! !

