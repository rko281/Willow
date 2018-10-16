"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WADeploymentMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeploymentMode guid: (GUID fromString: '{967bbeb0-c889-49d7-9096-f5e0030773d9}')!
WADeploymentMode comment: 'I represent a Willow Application Deployment mode. Currently I help in filtering file libraries to use according to the configured mode. '!
!WADeploymentMode categoriesForClass!Boardwalk-WebApplication! !
!WADeploymentMode methodsFor!

filter: allFileLibraryClasses	^ self subclassResponsibility!

libraryFor: aWillowFileMetadataLibraryClass	^ self subclassResponsibility ! !
!WADeploymentMode categoriesFor: #filter:!accessing!public! !
!WADeploymentMode categoriesFor: #libraryFor:!accessing!public! !

