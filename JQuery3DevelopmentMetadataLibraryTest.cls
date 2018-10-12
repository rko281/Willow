"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #JQuery3DevelopmentMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3DevelopmentMetadataLibraryTest guid: (GUID fromString: '{5f16e017-f9b4-4f77-af4f-de78ddddab6d}')!
JQuery3DevelopmentMetadataLibraryTest comment: ''!
!JQuery3DevelopmentMetadataLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3DevelopmentMetadataLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: JQuery3DevelopmentMetadataLibrary default		createsAsFolders: #('jQuery-3.3.1')		andFileContentsMatching: {('jQuery-3.3.1/jquery-3.3.1.js' -> 'add2bdf3f066f8c3cbffa85f299648d37a501fdc')}!

testHandlesFolder	self		assert: (JQuery3DevelopmentMetadataLibrary handlesFolder: JQuery3DevelopmentMetadataLibrary folderName);		deny: (JQuery3DevelopmentMetadataLibrary handlesFolder: #files)!

testIsForDevelopment	self		assert: JQuery3DevelopmentMetadataLibrary isForDevelopment;		deny: JQuery3DevelopmentMetadataLibrary isForDeployment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | JQuery3DevelopmentMetadataLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="/files/jQuery-3.3.1/jquery-3.3.1.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testHandlesFolder!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testIsForDevelopment!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

