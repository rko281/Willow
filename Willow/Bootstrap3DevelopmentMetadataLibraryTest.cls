"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #Bootstrap3DevelopmentMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3DevelopmentMetadataLibraryTest guid: (GUID fromString: '{1857bbfc-a07e-43fa-83aa-af70025755e2}')!
Bootstrap3DevelopmentMetadataLibraryTest comment: 'A Bootstrap3DevelopmentMetadataLibraryTest is a test class for testing the behavior of Bootstrap3DevelopmentMetadataLibrary'!
!Bootstrap3DevelopmentMetadataLibraryTest categoriesForClass!Willow-Bootstrap-Tests-Libraries! !
!Bootstrap3DevelopmentMetadataLibraryTest methodsFor!

testDeployFiles
	self		assertFileDeploymentOf: Bootstrap3DevelopmentMetadataLibrary default		createsAsFolders: #('bootstrap-3.3.7' 'bootstrap-3.3.7/css' 'bootstrap-3.3.7/fonts' 'bootstrap-3.3.7/js')		andFileContentsMatching:			{('bootstrap-3.3.7/css/bootstrap-theme.css' -> 'f23dbf16cd3b683f312e0668c398001702ac5b7b').			('bootstrap-3.3.7/css/bootstrap-theme.css.map' -> '5b1fdfb2666d478d5b4911c7bbd49edbf1b47fb1').			('bootstrap-3.3.7/css/bootstrap.css' -> 'f84ccc167c967675eba802d4b9d77088610585d8').			('bootstrap-3.3.7/css/bootstrap.css.map' -> 'ca50d917657a1631d58ce0c791604760d5532d12').			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.eot' -> '86b6f62b7853e67d3e635f6512a5a5efc58ea3c3').			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.svg' -> 'de51a8494180a6db074af2dee2383f0a363c5b08').			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.ttf' -> '44bc1850f570972267b169ae18f1cb06b611ffa2').			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff' -> '278e49a86e634da6f2a02f3b47dd9d2a8f26210f').			('bootstrap-3.3.7/fonts/glyphicons-halflings-regular.woff2' -> 'ca35b697d99cae4d1b60f2d60fcd37771987eb07').			('bootstrap-3.3.7/js/bootstrap.js' -> '586cc14f4a57852a86bac3ec7f466a8eb789236b')}!

testHandlesFolder	self		assert: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: Bootstrap3DevelopmentMetadataLibrary folderName);		deny: (Bootstrap3DevelopmentMetadataLibrary handlesFolder: #files)!

testIsForDevelopment	self		assert: Bootstrap3DevelopmentMetadataLibrary isForDevelopment;		deny: Bootstrap3DevelopmentMetadataLibrary isForDeployment!

testUpdateRoot	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | Bootstrap3DevelopmentMetadataLibrary default updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.css"/><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap-theme.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'!

testUpdateRootWithoutOptionalTheme	| html |	html := WAHtmlCanvas builder		fullDocument: true;		rootBlock: [ :root | Bootstrap3DevelopmentMetadataLibrary withoutOptionalTheme updateRoot: root ];		render: [ :canvas |  ].	self		assert: html		equals:			'<html><head><title></title><link rel="stylesheet" type="text/css" href="/files/bootstrap-3.3.7/css/bootstrap.css"/><script type="text/javascript" src="/files/bootstrap-3.3.7/js/bootstrap.js"></script></head><body onload="onLoad()"><script type="text/javascript">function onLoad(){};</script></body></html>'! !
!Bootstrap3DevelopmentMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!Bootstrap3DevelopmentMetadataLibraryTest categoriesFor: #testHandlesFolder!public!tests! !
!Bootstrap3DevelopmentMetadataLibraryTest categoriesFor: #testIsForDevelopment!public!tests! !
!Bootstrap3DevelopmentMetadataLibraryTest categoriesFor: #testUpdateRoot!public!tests! !
!Bootstrap3DevelopmentMetadataLibraryTest categoriesFor: #testUpdateRootWithoutOptionalTheme!public!tests! !

