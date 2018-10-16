"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #Bootstrap3OnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3OnlineLibraryTest guid: (GUID fromString: '{12a1b00f-0375-4612-a6ee-2f93a9d02c69}')!
Bootstrap3OnlineLibraryTest comment: 'A Bootstrap3OnlineLibraryTest is a test class for testing the behavior of Bootstrap3OnlineLibrary'!
!Bootstrap3OnlineLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Libraries! !
!Bootstrap3OnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | Bootstrap3OnlineLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/><link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/><script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testUpdateRootWithoutOptionalTheme	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | Bootstrap3OnlineLibrary withoutOptionalTheme  updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/><script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!Bootstrap3OnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests/Updating! !
!Bootstrap3OnlineLibraryTest categoriesFor: #testUpdateRootWithoutOptionalTheme!public!tests/Updating! !

