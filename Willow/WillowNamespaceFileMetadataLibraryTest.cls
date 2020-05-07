"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WillowNamespaceFileMetadataLibraryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowNamespaceFileMetadataLibraryTest guid: (GUID fromString: '{5c6d5219-a8fc-43c6-8707-2948c37ac48b}')!
WillowNamespaceFileMetadataLibraryTest comment: 'A WillowNamespaceFileMetadataLibraryTest is a test class for testing the behavior of WillowNamespaceFileMetadataLibrary'!
!WillowNamespaceFileMetadataLibraryTest categoriesForClass!Willow-Tests-Libraries! !
!WillowNamespaceFileMetadataLibraryTest methodsFor!

testDeployFiles	self		assertFileDeploymentOf: WillowNamespaceFileMetadataLibrary default deployFiles		createsAsFolders:			{'willow-8.0.1'.			( 'willow-8.0.1<1s>js' expandMacrosWith: GRPlatform current pathSeparator )}		andFileContentsMatching:			{( ( 'willow-8.0.1<1s>js/willow.js' expandMacrosWith: GRPlatform current pathSeparator )				-> 'd01dced3b8eed675fe45b1f8a3cb3470c730150b' )}!

testInstanceCreation	self		assert: WillowNamespaceFileMetadataLibrary forDeployment equals: WillowNamespaceFileMetadataLibrary;		assert: WillowNamespaceFileMetadataLibrary forDevelopment equals: WillowNamespaceFileMetadataLibrary!

testJavascriptCode	self		assert: WillowNamespaceFileMetadataLibrary default jswillowJsContent		equals:			'/*!!* willow.js v8.0.1* Copyright 2018 - Buenos Aires Smalltalk* Licensed under the MIT license*/"use strict";var Willow;if(Willow===undefined){Willow={"version":"8.0.1","handleAjaxErrorCall":function(xmlHttpRequest,textStatus,errorThrown){},"callServer":function(sessionInformation){sessionInformation["dataType"]="script";sessionInformation["error"]=Willow.handleAjaxErrorCall;$.ajax(sessionInformation)}}}'!

testTesting	self		assert: WillowNamespaceFileMetadataLibrary isForDeployment;		assert: WillowNamespaceFileMetadataLibrary isForDevelopment! !
!WillowNamespaceFileMetadataLibraryTest categoriesFor: #testDeployFiles!public!tests! !
!WillowNamespaceFileMetadataLibraryTest categoriesFor: #testInstanceCreation!public!tests! !
!WillowNamespaceFileMetadataLibraryTest categoriesFor: #testJavascriptCode!public!tests! !
!WillowNamespaceFileMetadataLibraryTest categoriesFor: #testTesting!public!tests! !

