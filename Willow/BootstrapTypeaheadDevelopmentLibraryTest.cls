"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #BootstrapTypeaheadDevelopmentLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadDevelopmentLibraryTest guid: (GUID fromString: '{02cd6d1c-5f5d-4f49-a8aa-49f4ca89a47f}')!
BootstrapTypeaheadDevelopmentLibraryTest comment: 'PA BootstrapTypeaheadDevelopmentLibraryTest is a test class for testing the behavior of BootstrapTypeaheadDevelopmentLibrary'!
!BootstrapTypeaheadDevelopmentLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Typeahead! !
!BootstrapTypeaheadDevelopmentLibraryTest methodsFor!

testDeployFiles	self		useFileTestingPlatformDuring: [ BootstrapTypeaheadDevelopmentLibrary default deployFiles.			self				assert: GRPlatform current createdFolders equals: #('bootstrap-typeahead-4.0.2');				assert: GRPlatform current createdFiles equals: #('bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js') ]!

testForDevelopment	self assert: BootstrapTypeaheadLibrary forDevelopment equals: BootstrapTypeaheadDevelopmentLibrary!

testIsForDevelopment	self assert: BootstrapTypeaheadLibrary forDevelopment isForDevelopment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | BootstrapTypeaheadDevelopmentLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!BootstrapTypeaheadDevelopmentLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!BootstrapTypeaheadDevelopmentLibraryTest categoriesFor: #testForDevelopment!public!tests! !
!BootstrapTypeaheadDevelopmentLibraryTest categoriesFor: #testIsForDevelopment!public!tests! !
!BootstrapTypeaheadDevelopmentLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

