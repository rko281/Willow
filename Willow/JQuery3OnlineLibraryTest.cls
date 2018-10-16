"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #JQuery3OnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3OnlineLibraryTest guid: (GUID fromString: '{99c6c052-a8a4-4e87-bb2b-59b894cd3cab}')!
JQuery3OnlineLibraryTest comment: 'A JQuery3OnlineLibraryTest is a test class for testing the behavior of JQuery3OnlineLibrary'!
!JQuery3OnlineLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3OnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | JQuery3OnlineLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!JQuery3OnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests/updating! !

