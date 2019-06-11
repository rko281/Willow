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

testDeployFiles	self		assertFileDeploymentOf: JQuery3DevelopmentMetadataLibrary default		createsAsFolders: #('jQuery-3.4.1')		andFileContentsMatching: {('jQuery-3.4.1/jquery-3.4.1.js' -> '285d1b29de021238e2438460a1998d7a4bc65663')}!

testHandlesFolder	self		assert: (JQuery3DevelopmentMetadataLibrary handlesFolder: JQuery3DevelopmentMetadataLibrary folderName);		deny: (JQuery3DevelopmentMetadataLibrary handlesFolder: #files)!

testIsForDevelopment	self		assert: JQuery3DevelopmentMetadataLibrary isForDevelopment;		deny: JQuery3DevelopmentMetadataLibrary isForDeployment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | JQuery3DevelopmentMetadataLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="/files/jQuery-3.4.1/jquery-3.4.1.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testHandlesFolder!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testIsForDevelopment!public!tests! !
!JQuery3DevelopmentMetadataLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

