"Filed out from Dolphin Smalltalk 7"!

WADeploymentMode subclass: #WAApplicationDeployed
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplicationDeployed guid: (GUID fromString: '{6cf1b067-2166-4798-ac28-b9be204d98a6}')!
WAApplicationDeployed comment: 'I represent a Willow Application as deployed.'!
!WAApplicationDeployed categoriesForClass!Boardwalk-WebApplication! !
!WAApplicationDeployed methodsFor!

filter: aWALibraryCollection	^ aWALibraryCollection select: [ :library | library subclasses isEmpty and: [ library isForDeployment ] ]!

libraryFor: aWillowFileMetadataLibraryClass	^ aWillowFileMetadataLibraryClass forDeployment! !
!WAApplicationDeployed categoriesFor: #filter:!accessing!public! !
!WAApplicationDeployed categoriesFor: #libraryFor:!accessing!public! !

