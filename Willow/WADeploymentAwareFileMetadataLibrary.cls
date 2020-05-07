"Filed out from Dolphin Smalltalk 7"!

WAFileMetadataLibrary subclass: #WADeploymentAwareFileMetadataLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeploymentAwareFileMetadataLibrary guid: (GUID fromString: '{838f0e61-f14e-4a29-9868-7a87961ffbc0}')!
WADeploymentAwareFileMetadataLibrary comment: 'I''m an abstract metadata library, allowing my subclasses to declare what name to use instead of the class name for url resolution.'!
!WADeploymentAwareFileMetadataLibrary categoriesForClass!Boardwalk-WebApplication! !
!WADeploymentAwareFileMetadataLibrary methodsFor!

javascriptContentFrom: aMonadycBlock	WACurrentRequestContext		use: ( WARequestContext request: WARequest new response: WABufferedResponse new )		during: [ WAHtmlCanvas builder				fullDocument: false;				render: [ :canvas | 					canvas requestContext						push: WARequestHandler new						during: [ | javascript |							javascript := canvas javascript.							aMonadycBlock cull: javascript.							^ javascript greaseString							]					]			]!

name	^ self class folderName!

urlOf: aSymbol using: aHandler	^ aHandler baseUrlForLibrary		addToPath: self name;		addToPath: (self asFilename: aSymbol);		yourself! !
!WADeploymentAwareFileMetadataLibrary categoriesFor: #javascriptContentFrom:!private / utility!public! !
!WADeploymentAwareFileMetadataLibrary categoriesFor: #name!public!testing! !
!WADeploymentAwareFileMetadataLibrary categoriesFor: #urlOf:using:!accessing!public! !

!WADeploymentAwareFileMetadataLibrary class methodsFor!

folderName	^ '<1s>-<2s>' expandMacrosWith: self libraryName with: self version!

forDeployment	^ self subclassResponsibility!

forDevelopment	^ self subclassResponsibility!

handlesFolder: aSymbol	^ self ~~ WADeploymentAwareFileMetadataLibrary and: [ self subclasses isEmpty and: [ self folderName = aSymbol greaseString ] ]!

isForDeployment	^ self forDeployment = self!

isForDevelopment	^ self forDevelopment = self!

libraryName	^ self subclassResponsibility!

version	^ self subclassResponsibility! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #folderName!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #forDeployment!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #handlesFolder:!public!Testing! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #isForDeployment!public!Testing! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #isForDevelopment!public!Testing! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #libraryName!Accessing!public! !
!WADeploymentAwareFileMetadataLibrary class categoriesFor: #version!Accessing!public! !

