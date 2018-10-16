"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WAFileTestingPlatformTest
	instanceVariableNames: 'testingPlatform'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileTestingPlatformTest guid: (GUID fromString: '{519c57a6-38bd-4efd-a421-7495a2d8d0d1}')!
WAFileTestingPlatformTest comment: 'I''m a test for WAFileTestingPlatform'!
!WAFileTestingPlatformTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!WAFileTestingPlatformTest methodsFor!

setUp	super setUp.	testingPlatform := WAFileTestingPlatform wrapping: GRPlatform current!

testFileLibrary	self		assert: testingPlatform createdFiles isEmpty;		assert: testingPlatform createdFolders isEmpty.	self		assert: (testingPlatform ensureExistenceOfFolder: 'project/source');		assert: (testingPlatform ensureExistenceOfFolder: 'folder').	self		assertCollection: testingPlatform createdFolders		equals: #('folder' 'project/source').	testingPlatform write: '' toFile: 'example.txt' inFolder: 'folder'.	self assertCollection: testingPlatform createdFiles equals: #('folder/example.txt')!

testLabel	self assert: testingPlatform label equals: 'File Testing Wrapper'! !
!WAFileTestingPlatformTest categoriesFor: #setUp!initialization!public! !
!WAFileTestingPlatformTest categoriesFor: #testFileLibrary!public!tests! !
!WAFileTestingPlatformTest categoriesFor: #testLabel!public!tests! !

