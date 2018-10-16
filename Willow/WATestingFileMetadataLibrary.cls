"Filed out from Dolphin Smalltalk 7"!

WADeploymentAwareFileMetadataLibrary subclass: #WATestingFileMetadataLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestingFileMetadataLibrary guid: (GUID fromString: '{4c86773e-2861-4fa4-9c8b-549c78d89609}')!
WATestingFileMetadataLibrary comment: 'Test support library'!
!WATestingFileMetadataLibrary categoriesForClass!Boardwalk-Tests-WebApplication! !
!WATestingFileMetadataLibrary methodsFor!

jsUndefinedJs	^ WAFileLibraryResource		filepath: 'js/undefined.js'		mimeType: WAMimeType textJavascript		cacheDuration: self class defaultCacheDuration		contents: (GRDelayedSend receiver: self selector: #jsUndefinedJsContent)!

jsUndefinedJsContent	^ self javascriptContentFrom: [ :js | js << JSStream undefined ]! !
!WATestingFileMetadataLibrary categoriesFor: #jsUndefinedJs!accesing!public! !
!WATestingFileMetadataLibrary categoriesFor: #jsUndefinedJsContent!accesing!public! !

!WATestingFileMetadataLibrary class methodsFor!

forDeployment	^ WATestingFileMetadataDeploymentLibrary!

forDevelopment	^ WATestingFileMetadataDevelopmentLibrary!

libraryName	^ 'testing'!

version	^ '0.0.0'! !
!WATestingFileMetadataLibrary class categoriesFor: #forDeployment!Accessing!public! !
!WATestingFileMetadataLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!WATestingFileMetadataLibrary class categoriesFor: #libraryName!Accessing!public! !
!WATestingFileMetadataLibrary class categoriesFor: #version!Accessing!public! !

