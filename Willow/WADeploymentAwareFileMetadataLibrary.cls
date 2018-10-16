﻿"Filed out from Dolphin Smalltalk 7"!

WAFileMetadataLibrary subclass: #WADeploymentAwareFileMetadataLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeploymentAwareFileMetadataLibrary guid: (GUID fromString: '{838f0e61-f14e-4a29-9868-7a87961ffbc0}')!
WADeploymentAwareFileMetadataLibrary comment: 'I''m an abstract metadata library, allowing my subclasses to declare what name to use instead of the class name for url resolution.'!
!WADeploymentAwareFileMetadataLibrary categoriesForClass!Boardwalk-WebApplication! !
!WADeploymentAwareFileMetadataLibrary methodsFor!

javascriptContentFrom: aMonadycBlock

name

urlOf: aSymbol using: aHandler
!WADeploymentAwareFileMetadataLibrary categoriesFor: #javascriptContentFrom:!private / utility!public! !
!WADeploymentAwareFileMetadataLibrary categoriesFor: #name!public!testing! !
!WADeploymentAwareFileMetadataLibrary categoriesFor: #urlOf:using:!accessing!public! !

!WADeploymentAwareFileMetadataLibrary class methodsFor!

folderName

forDeployment

forDevelopment

handlesFolder: aSymbol

isForDeployment

isForDevelopment

libraryName

version
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #folderName!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #forDeployment!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #handlesFolder:!public!Testing! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #isForDeployment!public!Testing! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #isForDevelopment!public!Testing! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #libraryName!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #version!Accessing!public! !
