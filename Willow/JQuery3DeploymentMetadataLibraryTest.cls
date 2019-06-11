"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #JQuery3DeploymentMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3DeploymentMetadataLibraryTest guid: (GUID fromString: '{085fbe6d-c2ac-4496-b12a-80bdc4f46255}')!
JQuery3DeploymentMetadataLibraryTest comment: ''!
!JQuery3DeploymentMetadataLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3DeploymentMetadataLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: JQuery3DeploymentMetadataLibrary default		createsAsFolders: #('jQuery-3.4.1')		andFileContentsMatching:			{('jQuery-3.4.1/jquery-3.4.1.min.js' -> 'fb0fe30ff8254f194eb6034b617484dd88cb0f06').			('jQuery-3.4.1/jquery-3.4.1.min.map' -> '459d03f31fac5bd9a6a4aaac2dcd35ca1ecc6995')}!

testHandlesFolder	self		assert: (JQuery3DeploymentMetadataLibrary handlesFolder: JQuery3DeploymentMetadataLibrary folderName);		deny: (JQuery3DeploymentMetadataLibrary handlesFolder: #files)!

testIsForDeployment	self		assert: JQuery3DeploymentMetadataLibrary isForDeployment;		deny: JQuery3DeploymentMetadataLibrary isForDevelopment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | JQuery3DeploymentMetadataLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="/files/jQuery-3.4.1/jquery-3.4.1.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testHandlesFolder!public!tests! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testIsForDeployment!public!tests! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

