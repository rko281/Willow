"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapTypeaheadLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadLibraryTest guid: (GUID fromString: '{1c879826-427d-41d4-ad37-e709a6572624}')!
BootstrapTypeaheadLibraryTest comment: 'A BootstrapTypeaheadLibraryTest is a test class for testing the behavior of BootstrapTypeaheadLibrary'!
!BootstrapTypeaheadLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Typeahead! !
!BootstrapTypeaheadLibraryTest methodsFor!

testVersionCompatibility	self		assert: BootstrapTypeaheadDeploymentLibrary version equals: BootstrapTypeaheadDevelopmentLibrary version;		assert: BootstrapTypeaheadDeploymentLibrary version equals: BootstrapTypeaheadOnlineLibrary default version! !
!BootstrapTypeaheadLibraryTest categoriesFor: #testVersionCompatibility!public!tests! !

