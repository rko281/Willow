"Filed out from Dolphin Smalltalk 7"!

WADeploymentMode subclass: #WAApplicationInDevelopment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplicationInDevelopment guid: (GUID fromString: '{5deb28a3-4c4b-42e4-872c-ce70500057db}')!
WAApplicationInDevelopment comment: 'I represent a Willow Application in development.'!
!WAApplicationInDevelopment categoriesForClass!Boardwalk-WebApplication! !
!WAApplicationInDevelopment methodsFor!

filter: aWALibraryCollection	^ aWALibraryCollection select: [ :library | library subclasses isEmpty and: [ library isForDevelopment ] ]!

libraryFor: aWillowFileMetadataLibraryClass	^ aWillowFileMetadataLibraryClass forDevelopment! !
!WAApplicationInDevelopment categoriesFor: #filter:!accessing!public! !
!WAApplicationInDevelopment categoriesFor: #libraryFor:!accessing!public! !

