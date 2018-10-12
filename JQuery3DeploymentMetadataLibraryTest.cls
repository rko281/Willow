"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #JQuery3DeploymentMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQuery3DeploymentMetadataLibraryTest guid: (GUID fromString: '{f7ae8d15-d0c7-42d1-b75e-826671f86737}')!
JQuery3DeploymentMetadataLibraryTest comment: ''!
!JQuery3DeploymentMetadataLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!JQuery3DeploymentMetadataLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: JQuery3DeploymentMetadataLibrary default		createsAsFolders: #('jQuery-3.3.1')		andFileContentsMatching:			{('jQuery-3.3.1/jquery-3.3.1.min.js' -> '0aa5299be816e714a9141f4c0cf72e99690bbc82').			('jQuery-3.3.1/jquery-3.3.1.min.map' -> '937130c6bd332333d7b2e6e63bbf90b4f4ec09c3')}!

testHandlesFolder	self		assert: (JQuery3DeploymentMetadataLibrary handlesFolder: JQuery3DeploymentMetadataLibrary folderName);		deny: (JQuery3DeploymentMetadataLibrary handlesFolder: #files)!

testIsForDeployment	self		assert: JQuery3DeploymentMetadataLibrary isForDeployment;		deny: JQuery3DeploymentMetadataLibrary isForDevelopment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | JQuery3DeploymentMetadataLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><script type="text/javascript" src="/files/jQuery-3.3.1/jquery-3.3.1.min.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testHandlesFolder!public!tests! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testIsForDeployment!public!tests! !
!JQuery3DeploymentMetadataLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

