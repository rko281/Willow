"Filed out from Dolphin Smalltalk 7"!

WAFileHandler subclass: #WADeploymentAwareFileHandler
	instanceVariableNames: 'libraries baseUrlForLibraryOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeploymentAwareFileHandler guid: (GUID fromString: '{2bf36dc5-806d-4b5e-8e75-7390fedf8043}')!
WADeploymentAwareFileHandler comment: 'I''m a File Handler that allows to configure the available file library classes.'!
!WADeploymentAwareFileHandler categoriesForClass!Boardwalk-WebApplication! !
!WADeploymentAwareFileHandler methodsFor!

baseUrlForLibrary	^baseUrlForLibraryOptional withContentDo: [:url | url copy] ifUnused: [super baseUrlForLibrary]!

initialize	super initialize.	libraries := #()!

initializeProviding: aWALibraryCollection baseUrlForLibraryOptional: anOptional	libraries := aWALibraryCollection.	baseUrlForLibraryOptional := anOptional!

libraries	^libraries ! !
!WADeploymentAwareFileHandler categoriesFor: #baseUrlForLibrary!accessing!public! !
!WADeploymentAwareFileHandler categoriesFor: #initialize!initialization!public! !
!WADeploymentAwareFileHandler categoriesFor: #initializeProviding:baseUrlForLibraryOptional:!initialization!public! !
!WADeploymentAwareFileHandler categoriesFor: #libraries!accessing!public! !

!WADeploymentAwareFileHandler class methodsFor!

install: fileHandler	WAFileHandler default: fileHandler.	WAAdmin defaultDispatcher register: fileHandler at: 'files'.	^ fileHandler!

installAsFileHandlerAccordingTo: aDeploymentMode	| libraries fileHandler |	libraries := aDeploymentMode filter: WAAbstractFileLibrary libraries.	fileHandler := self providing: libraries.	^ self install: fileHandler!

installAsFileHandlerAccordingTo: aDeploymentMode servedAt: aURL	| libraries fileHandler |	libraries := aDeploymentMode filter: WAAbstractFileLibrary libraries.	fileHandler := self providing: libraries baseUrlForLibraryOptional: (Optional containing: aURL).	^ self install: fileHandler!

providing: aWAFileLibraryCollection	^ self providing: aWAFileLibraryCollection baseUrlForLibraryOptional: Optional unused!

providing: aWAFileLibraryCollection baseUrlForLibraryOptional: anOptional	^ self new		initializeProviding: aWAFileLibraryCollection		baseUrlForLibraryOptional: anOptional! !
!WADeploymentAwareFileHandler class categoriesFor: #install:!private/Installing!public! !
!WADeploymentAwareFileHandler class categoriesFor: #installAsFileHandlerAccordingTo:!Installing!public! !
!WADeploymentAwareFileHandler class categoriesFor: #installAsFileHandlerAccordingTo:servedAt:!Installing!public! !
!WADeploymentAwareFileHandler class categoriesFor: #providing:!Instance Creation!public! !
!WADeploymentAwareFileHandler class categoriesFor: #providing:baseUrlForLibraryOptional:!private / Instance Creation!public! !

