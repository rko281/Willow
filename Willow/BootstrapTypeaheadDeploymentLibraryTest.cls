"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #BootstrapTypeaheadDeploymentLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadDeploymentLibraryTest guid: (GUID fromString: '{c1e3e26f-b7dd-4ca6-85c0-9bdf86953a88}')!
BootstrapTypeaheadDeploymentLibraryTest comment: 'A BootstrapTypeaheadDeploymentLibraryTest is a test class for testing the behavior of BootstrapTypeaheadDeploymentLibrary'!
!BootstrapTypeaheadDeploymentLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Typeahead! !
!BootstrapTypeaheadDeploymentLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: BootstrapTypeaheadDeploymentLibrary default		createsAsFolders: #('bootstrap-typeahead-4.0.2')		andFileContentsMatching: {('bootstrap-typeahead-4.0.2/bootstrap3-typeahead.min.js' -> '8174cc20521054baee069553cbbca7a662d6d025')}!

testForDeployment	self assert: BootstrapTypeaheadLibrary forDeployment equals: BootstrapTypeaheadDeploymentLibrary!

testIsForDeployment	self assert: BootstrapTypeaheadLibrary forDeployment isForDeployment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | BootstrapTypeaheadDeploymentLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="/files/bootstrap-typeahead-4.0.2/bootstrap3-typeahead.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!BootstrapTypeaheadDeploymentLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!BootstrapTypeaheadDeploymentLibraryTest categoriesFor: #testForDeployment!public!tests! !
!BootstrapTypeaheadDeploymentLibraryTest categoriesFor: #testIsForDeployment!public!tests! !
!BootstrapTypeaheadDeploymentLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

