"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapSelectLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectLibraryTest guid: (GUID fromString: '{983fdeef-c9ed-4607-8127-ef74f732a906}')!
BootstrapSelectLibraryTest comment: 'A BootstrapSelectLibraryTest is a test class for testing the behavior of BootstrapSelectLibrary'!
!BootstrapSelectLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Select! !
!BootstrapSelectLibraryTest methodsFor!

testVersionCompatibility	self		assert: BootstrapSelectDeploymentLibrary version equals: BootstrapSelectDevelopmentLibrary version;		assert: BootstrapSelectDeploymentLibrary version equals: BootstrapSelectOnlineLibrary default version! !
!BootstrapSelectLibraryTest categoriesFor: #testVersionCompatibility!public!tests! !

