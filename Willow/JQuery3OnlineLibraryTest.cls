"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #JQuery3OnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3OnlineLibraryTest guid: (GUID fromString: '{1e3702cb-8926-4410-9c4e-e9154d4ae488}')!
JQuery3OnlineLibraryTest comment: 'A JQuery3OnlineLibraryTest is a test class for testing the behavior of JQuery3OnlineLibrary'!
!JQuery3OnlineLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3OnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | JQuery3OnlineLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!JQuery3OnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests/updating! !

