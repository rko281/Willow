"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapTypeaheadOnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadOnlineLibraryTest guid: (GUID fromString: '{a01a01af-5f1d-460f-b298-446324e0f92e}')!
BootstrapTypeaheadOnlineLibraryTest comment: 'A BootstrapTypeaheadOnlineLibraryTest is a test class for testing the behavior of BootstrapTypeaheadOnlineLibrary'!
!BootstrapTypeaheadOnlineLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Typeahead! !
!BootstrapTypeaheadOnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | BootstrapTypeaheadOnlineLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!BootstrapTypeaheadOnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests/Updating! !

