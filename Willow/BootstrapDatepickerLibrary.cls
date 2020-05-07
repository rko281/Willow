"Filed out from Dolphin Smalltalk 7"!

WADeploymentAwareFileMetadataLibrary subclass: #BootstrapDatepickerLibrary
	instanceVariableNames: 'locale'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerLibrary guid: (GUID fromString: '{12ef0ae5-08f4-4517-ae70-bae8e8bcdbbc}')!
BootstrapDatepickerLibrary comment: 'I''m an abstract library for Bootstrap Datepicker'!
!BootstrapDatepickerLibrary categoriesForClass!Willow-Bootstrap-Datepicker! !
!BootstrapDatepickerLibrary methodsFor!

initializeUsing: aWALocale	locale := aWALocale! !
!BootstrapDatepickerLibrary categoriesFor: #initializeUsing:!initialization!public! !

!BootstrapDatepickerLibrary class methodsFor!

default	^ super default initializeUsing: (WALocale fromString: 'en')!

forDeployment	^ BootstrapDatepickerDeploymentLibrary !

forDevelopment	^ BootstrapDatepickerDevelopmentLibrary!

libraryName	^ 'bootstrap-datepicker'!

using: aWALocale	^ self new initializeUsing: aWALocale!

version	^ '1.9.0'! !
!BootstrapDatepickerLibrary class categoriesFor: #default!instance creation!public! !
!BootstrapDatepickerLibrary class categoriesFor: #forDeployment!Accessing!public! !
!BootstrapDatepickerLibrary class categoriesFor: #forDevelopment!Accessing!public! !
!BootstrapDatepickerLibrary class categoriesFor: #libraryName!Accessing!public! !
!BootstrapDatepickerLibrary class categoriesFor: #using:!instance creation!public! !
!BootstrapDatepickerLibrary class categoriesFor: #version!Accessing!public! !

