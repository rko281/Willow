"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #JQuery3DevelopmentMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3DevelopmentMetadataLibraryTest guid: (GUID fromString: '{550fb978-4333-4489-9150-c721ae54949d}')!
JQuery3DevelopmentMetadataLibraryTest comment: ''!
!JQuery3DevelopmentMetadataLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3DevelopmentMetadataLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: JQuery3DevelopmentMetadataLibrary default		createsAsFolders: #('jQuery-3.5.0')		andFileContentsMatching: {( 'jQuery-3.5.0/jquery-3.5.0.js' -> '0881486213775d1f0af7629fcc935b36478a261e' )}!

testHandlesFolder	self		assert: (JQuery3DevelopmentMetadataLibrary handlesFolder: JQuery3DevelopmentMetadataLibrary folderName);		deny: (JQuery3DevelopmentMetadataLibrary handlesFolder: #files)!

testIsForDevelopment	self		assert: JQuery3DevelopmentMetadataLibrary isForDevelopment;		deny: JQuery3DevelopmentMetadataLibrary isForDeployment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | JQuery3DevelopmentMetadataLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="/files/jQuery-3.5.0/jquery-3.5.0.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testHandlesFolder!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testIsForDevelopment!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

