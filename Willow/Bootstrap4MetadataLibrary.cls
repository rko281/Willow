"Filed out from Dolphin Smalltalk 7"!

WADeploymentAwareFileMetadataLibrary subclass: #Bootstrap4MetadataLibrary
	instanceVariableNames: 'useBundledDependencies'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4MetadataLibrary guid: (GUID fromString: '{0c3a0fae-5e88-440e-b057-181dbc907d34}')!
Bootstrap4MetadataLibrary comment: 'I''m an asbtract WALibary serving the files in source form'!
!Bootstrap4MetadataLibrary categoriesForClass!Willow-Bootstrap-4-Libraries! !
!Bootstrap4MetadataLibrary methodsFor!

initializeUsingBundledDependencies: aBoolean		useBundledDependencies := aBoolean ! !
!Bootstrap4MetadataLibrary categoriesFor: #initializeUsingBundledDependencies:!initialization!public! !

!Bootstrap4MetadataLibrary class methodsFor!

default	^ super default initializeUsingBundledDependencies: true!

forDeployment	^ Bootstrap4DeploymentMetadataLibrary!

forDevelopment	^ Bootstrap4DevelopmentMetadataLibrary!

libraryName	^ 'bootstrap'!

version	^ '4.4.1'!

withoutBundledDependencies	^ super default initializeUsingBundledDependencies: false! !
!Bootstrap4MetadataLibrary class categoriesFor: #default!instance creation!public! !
!Bootstrap4MetadataLibrary class categoriesFor: #forDeployment!Accessing!public! !
!Bootstrap4MetadataLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!Bootstrap4MetadataLibrary class categoriesFor: #libraryName!Accessing!public! !
!Bootstrap4MetadataLibrary class categoriesFor: #version!Accessing!public! !
!Bootstrap4MetadataLibrary class categoriesFor: #withoutBundledDependencies!instance creation!public! !

