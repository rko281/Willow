"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitDevelopmentMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitDevelopmentMetadataLibraryTest guid: (GUID fromString: '{bbe4209a-191b-4f9b-af61-c7a78bc7dbc7}')!
SpinKitDevelopmentMetadataLibraryTest comment: 'A SpinKitDevelopmentMetadataLibraryTest is a test class for testing the behavior of SpinKitDevelopmentMetadataLibrary'!
!SpinKitDevelopmentMetadataLibraryTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitDevelopmentMetadataLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: SpinKitDevelopmentMetadataLibrary default		createsAsFolders: #('spinkit-2.0.1')		andFileContentsMatching: {( 'spinkit-2.0.1/spinkit.css' -> '117a712310cbe3c04698e1e2baa5d7b9e2ad0139' )}!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | SpinKitMetadataLibrary forDevelopment default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/spinkit-2.0.1/spinkit.css"/></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!SpinKitDevelopmentMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!SpinKitDevelopmentMetadataLibraryTest categoriesFor: #testUpdateRoot!public!tests! !

