"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #BWRenderingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BWRenderingTest guid: (GUID fromString: '{af1461d3-27de-4f7a-af5e-ec7661e79e52}')!
BWRenderingTest comment: 'I''m an abstract test case providing facilities to test Seaside components'!
!BWRenderingTest categoriesForClass!Boardwalk-SUnit! !
!BWRenderingTest methodsFor!

assertFileDeploymentOf: fileMetadataLibrary	createsAsFolders: expectedFolders	andFileContentsMatching: expectedFilesMetadata	"expectedFilesMetadata MUST be a collection of associations with key = expectedFilePath and value = expectedFileContentsHash"	self		useFileTestingPlatformDuring: [ | expectedFiles hashByFile |			fileMetadataLibrary deployFiles.			expectedFiles := expectedFilesMetadata asArray collect: [ :fileMetadata | fileMetadata key ].			hashByFile := expectedFilesMetadata asDictionary.			self				assert: GRPlatform current createdFolders equals: expectedFolders asArray;				assert: GRPlatform current createdFiles equals: expectedFiles.			hashByFile				keysAndValuesDo: [ :file :hash | self assert: ( GRPlatform current savedHashFor: file ) equals: hash ]			]!

builder	^ WAHtmlCanvas builder		fullDocument: false;		codec: self createCodec;		yourself!

createCodec

	^ GRDolphinUtf8Codec new!

fullDocumentRendering: aWARootComponent	^ self builder		fullDocument: true;		rootBlock: [ :root | aWARootComponent updateRoot: root ];		render: aWARootComponent!

render: aRenderable	^ self renderUsing: [ :canvas | canvas render: aRenderable ]!

renderUsing: aMonadycBlock	^ self builder render: [ :canvas | aMonadycBlock cull: canvas ]!

useFileTestingPlatformDuring: aBlock	| installedPlatform |	installedPlatform := GRPlatform current.	[ GRPlatform current: ( WAFileTestingPlatform wrapping: installedPlatform ).	aBlock value	]		ensure: [ GRPlatform current: installedPlatform ]! !
!BWRenderingTest categoriesFor: #assertFileDeploymentOf:createsAsFolders:andFileContentsMatching:!asserting!public! !
!BWRenderingTest categoriesFor: #builder!public!utility! !
!BWRenderingTest categoriesFor: #createCodec!public! !
!BWRenderingTest categoriesFor: #fullDocumentRendering:!public!utility! !
!BWRenderingTest categoriesFor: #render:!public!utility! !
!BWRenderingTest categoriesFor: #renderUsing:!public!utility! !
!BWRenderingTest categoriesFor: #useFileTestingPlatformDuring:!public!utility! !

!BWRenderingTest class methodsFor!

isAbstract	^ self name = #BWRenderingTest! !
!BWRenderingTest class categoriesFor: #isAbstract!public!testing! !

