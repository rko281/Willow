"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapDatepickerLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerLibraryTest guid: (GUID fromString: '{f066b4d1-aa1b-4025-b3ce-e7513ad91050}')!
BootstrapDatepickerLibraryTest comment: 'A BootstrapDatepickerLibraryTest is a test class for testing the behavior of BootstrapDatepickerLibrary'!
!BootstrapDatepickerLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Datepicker! !
!BootstrapDatepickerLibraryTest methodsFor!

testVersionCompatibility	self		assert: BootstrapDatepickerDeploymentLibrary version equals: BootstrapDatepickerDevelopmentLibrary version;		assert: BootstrapDatepickerDeploymentLibrary version equals: BootstrapDatepickerOnlineLibrary default version! !
!BootstrapDatepickerLibraryTest categoriesFor: #testVersionCompatibility!public!tests! !

