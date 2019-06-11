﻿"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #BWRenderingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BWRenderingTest guid: (GUID fromString: '{af1461d3-27de-4f7a-af5e-ec7661e79e52}')!
BWRenderingTest comment: 'I''m an abstract test case providing facilities to test Seaside components'!
!BWRenderingTest categoriesForClass!Boardwalk-SUnit! !
!BWRenderingTest methodsFor!

assertFileDeploymentOf: fileMetadataLibrary

builder

createCodec

	^ GRDolphinUtf8Codec new!

fullDocumentRendering: aWARootComponent

render: aRenderable

renderUsing: aMonadycBlock

useFileTestingPlatformDuring: aBlock
!BWRenderingTest categoriesFor: #assertFileDeploymentOf:createsAsFolders:andFileContentsMatching:!asserting!public! !
!BWRenderingTest categoriesFor: #builder!public!utility! !
!BWRenderingTest categoriesFor: #createCodec!public! !
!BWRenderingTest categoriesFor: #fullDocumentRendering:!public!utility! !
!BWRenderingTest categoriesFor: #render:!public!utility! !
!BWRenderingTest categoriesFor: #renderUsing:!public!utility! !
!BWRenderingTest categoriesFor: #useFileTestingPlatformDuring:!public!utility! !

!BWRenderingTest class methodsFor!

isAbstract
!BWRenderingTest class categoriesFor: #isAbstract!public!testing! !
