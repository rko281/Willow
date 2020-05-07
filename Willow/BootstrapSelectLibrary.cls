"Filed out from Dolphin Smalltalk 7"!

WADeploymentAwareFileMetadataLibrary subclass: #BootstrapSelectLibrary
	instanceVariableNames: 'locale'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectLibrary guid: (GUID fromString: '{b0ccf70e-0b97-42f4-bf53-359f6ef322b8}')!
BootstrapSelectLibrary comment: 'I''m an abstract library for Bootstrap Select'!
!BootstrapSelectLibrary categoriesForClass!Willow-Bootstrap-Select! !
!BootstrapSelectLibrary methodsFor!

initializeUsing: aWALocale	locale := aWALocale! !
!BootstrapSelectLibrary categoriesFor: #initializeUsing:!initialization!public! !

!BootstrapSelectLibrary class methodsFor!

default	^ super default initializeUsing: (WALocale fromString: 'en-US')!

forDeployment	^ BootstrapSelectDeploymentLibrary!

forDevelopment	^ BootstrapSelectDevelopmentLibrary!

libraryName	^ 'bootstrap-select'!

using: aWALocale	^ self new initializeUsing: aWALocale!

version	^'1.13.16'! !
!BootstrapSelectLibrary class categoriesFor: #default!instance creation!public! !
!BootstrapSelectLibrary class categoriesFor: #forDeployment!Accessing!public! !
!BootstrapSelectLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!BootstrapSelectLibrary class categoriesFor: #libraryName!Accessing!public! !
!BootstrapSelectLibrary class categoriesFor: #using:!instance creation!public! !
!BootstrapSelectLibrary class categoriesFor: #version!Accessing!public! !

