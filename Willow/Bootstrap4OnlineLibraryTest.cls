"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #Bootstrap4OnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4OnlineLibraryTest guid: (GUID fromString: '{b33b2cfc-b784-436f-b67f-1969329f6ef6}')!
Bootstrap4OnlineLibraryTest comment: 'A Bootstrap4OnlineLibraryTest is a test class for testing the behavior of Bootstrap4OnlineLibrary'!
!Bootstrap4OnlineLibraryTest categoriesForClass!Willow-Bootstrap-4-Tests-Libraries! !
!Bootstrap4OnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | Bootstrap4OnlineLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/><script type="text/javascript" src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script><script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testVersion	self assert: Bootstrap4OnlineLibrary default version equals: '4.4.1'! !
!Bootstrap4OnlineLibraryTest categoriesFor: #testUpdateRoot!public!test! !
!Bootstrap4OnlineLibraryTest categoriesFor: #testVersion!public!test! !

