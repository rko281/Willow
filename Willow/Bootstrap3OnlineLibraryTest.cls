"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #Bootstrap3OnlineLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3OnlineLibraryTest guid: (GUID fromString: '{36e96707-3df6-48f3-b597-5bda216c6a72}')!
Bootstrap3OnlineLibraryTest comment: 'A Bootstrap3OnlineLibraryTest is a test class for testing the behavior of Bootstrap3OnlineLibrary'!
!Bootstrap3OnlineLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Libraries! !
!Bootstrap3OnlineLibraryTest methodsFor!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | Bootstrap3OnlineLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals: '<html><head><title></title><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous"/><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous"/><script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'			!

testUpdateRootWithoutOptionalTheme	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | Bootstrap3OnlineLibrary withoutOptionalTheme updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals: '<html><head><title></title><link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous"/><script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'		! !
!Bootstrap3OnlineLibraryTest categoriesFor: #testUpdateRoot!public!tests/Updating! !
!Bootstrap3OnlineLibraryTest categoriesFor: #testUpdateRootWithoutOptionalTheme!public!tests/Updating! !

