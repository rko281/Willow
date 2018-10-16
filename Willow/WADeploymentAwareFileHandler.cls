﻿"Filed out from Dolphin Smalltalk 7"!

WAFileHandler subclass: #WADeploymentAwareFileHandler
	instanceVariableNames: 'libraries baseUrlForLibraryOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeploymentAwareFileHandler guid: (GUID fromString: '{2bf36dc5-806d-4b5e-8e75-7390fedf8043}')!
WADeploymentAwareFileHandler comment: 'I''m a File Handler that allows to configure the available file library classes.'!
!WADeploymentAwareFileHandler categoriesForClass!Boardwalk-WebApplication! !
!WADeploymentAwareFileHandler methodsFor!

baseUrlForLibrary

initialize

initializeProviding: aWALibraryCollection baseUrlForLibraryOptional: anOptional

libraries
!WADeploymentAwareFileHandler categoriesFor: #baseUrlForLibrary!accessing!public! !
!WADeploymentAwareFileHandler categoriesFor: #initialize!initialization!public! !
!WADeploymentAwareFileHandler categoriesFor: #initializeProviding:baseUrlForLibraryOptional:!initialization!public! !
!WADeploymentAwareFileHandler categoriesFor: #libraries!accessing!public! !

!WADeploymentAwareFileHandler class methodsFor!

install: fileHandler

installAsFileHandlerAccordingTo: aDeploymentMode

installAsFileHandlerAccordingTo: aDeploymentMode servedAt: aURL

providing: aWAFileLibraryCollection

providing: aWAFileLibraryCollection baseUrlForLibraryOptional: anOptional
!WADeploymentAwareFileHandler class categoriesFor: #install:!private/Installing!public! !
!WADeploymentAwareFileHandler class categoriesFor: #installAsFileHandlerAccordingTo:!Installing!public! !
!WADeploymentAwareFileHandler class categoriesFor: #installAsFileHandlerAccordingTo:servedAt:!Installing!public! !
!WADeploymentAwareFileHandler class categoriesFor: #providing:!Instance Creation!public! !
!WADeploymentAwareFileHandler class categoriesFor: #providing:baseUrlForLibraryOptional:!private / Instance Creation!public! !
