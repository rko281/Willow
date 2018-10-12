"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #BootstrapTypeaheadOnlineLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapTypeaheadOnlineLibrary guid: (GUID fromString: '{0817cf05-bf9a-4d42-af80-a4e5edeb4645}')!
BootstrapTypeaheadOnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!BootstrapTypeaheadOnlineLibrary categoriesForClass!Willow-Bootstrap-Typeahead! !
!BootstrapTypeaheadOnlineLibrary methodsFor!

updateRoot: aRoot	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/<1s>/bootstrap3-typeahead.min.js' expandMacrosWith: self version)!

version	^ '4.0.2'! !
!BootstrapTypeaheadOnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!BootstrapTypeaheadOnlineLibrary categoriesFor: #version!public!versions! !

