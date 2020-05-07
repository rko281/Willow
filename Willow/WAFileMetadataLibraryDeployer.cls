"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WAFileMetadataLibraryDeployer
	instanceVariableNames: 'libraries'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileMetadataLibraryDeployer guid: (GUID fromString: '{b181f694-e64d-49c4-a19b-db343102b8cf}')!
WAFileMetadataLibraryDeployer comment: 'I''m a deployer aimed at not only generating the static contents from a list of libraries, but also creating a file including useful metadata to be used when the files are uploaded to a CDN.'!
!WAFileMetadataLibraryDeployer categoriesForClass!Boardwalk-WebApplication! !
!WAFileMetadataLibraryDeployer methodsFor!

deployFiles	libraries do: [ :library | library deployFiles ]!

deployFilesMetadata	| metadataJSON |	metadataJSON := ( libraries		inject: Dictionary new		into: [ :metadata :library | 			( self resourcesOf: library )				do: [ :resource | 					metadata						at: 'filePath'							put: ( '<1s>/<2s>' expandMacrosWith: library class folderName with: resource filepath );						at: 'mediaType' put: resource mimeType greaseString.					[ metadata at: 'cacheDurationInMs' put: resource cacheDuration asMilliseconds ]						unless: resource cacheDuration = library class defaultCacheDuration					].			metadata			] ) asJson.	GRPlatform current write: metadataJSON toFile: 'libraries-metadata.json' inFolder: '.'!

initializeDeployingAll: libraryFactories	libraries := libraryFactories		collect: [ :factory | 			| library |			library := factory forDeployment.			library isClass then: [ library default ] otherwise: [ library ]			].	WADeploymentAwareFileHandler		installAsFileHandlerAccordingTo: WAApplicationDeployed new		servedAt: '/' seasideUrl!

resourcesOf: library	^ library fileSelectors collect: [ :selector | library perform: selector ]! !
!WAFileMetadataLibraryDeployer categoriesFor: #deployFiles!actions!public! !
!WAFileMetadataLibraryDeployer categoriesFor: #deployFilesMetadata!actions!public! !
!WAFileMetadataLibraryDeployer categoriesFor: #initializeDeployingAll:!initialization!public! !
!WAFileMetadataLibraryDeployer categoriesFor: #resourcesOf:!private! !

!WAFileMetadataLibraryDeployer class methodsFor!

deployingAll: libraryFactories	^ self new initializeDeployingAll: libraryFactories! !
!WAFileMetadataLibraryDeployer class categoriesFor: #deployingAll:!instance creation!public! !

