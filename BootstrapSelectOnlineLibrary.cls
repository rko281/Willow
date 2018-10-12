"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #BootstrapSelectOnlineLibrary
	instanceVariableNames: 'locale'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectOnlineLibrary guid: (GUID fromString: '{edf88808-4c62-4902-ae98-5a0a5cb57070}')!
BootstrapSelectOnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!BootstrapSelectOnlineLibrary categoriesForClass!Willow-Bootstrap-Select! !
!BootstrapSelectOnlineLibrary methodsFor!

initializeUsing: aWALocale	locale := aWALocale!

updateLocaleIn: aRoot	| fileName |	fileName := BootstrapSelectLanguageToFileNameTranslator new fileNameFrom: locale.	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/js/i18n/<2s>.min.js' expandMacrosWith: self version with: fileName)!

updateRoot: aRoot	aRoot stylesheet		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/css/bootstrap-select.min.css' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha256-/us3egi2cVp0mEkVR8cnqLsuDY6BmrDuvTPUuEr1HJQ='.	aRoot javascript		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/<1s>/js/bootstrap-select.min.js' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha256-19J3rT3tQdidgtqqdQ3xNu++Gd7EoP/ag/0x1lHi0xY='.	self updateLocaleIn: aRoot!

version	^'1.12.4'! !
!BootstrapSelectOnlineLibrary categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapSelectOnlineLibrary categoriesFor: #updateLocaleIn:!private! !
!BootstrapSelectOnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!BootstrapSelectOnlineLibrary categoriesFor: #version!Accessing!public! !

!BootstrapSelectOnlineLibrary class methodsFor!

default	^self inUSEnglish !

inSpanish	^ self using: (WALocale fromString: 'es-ES')!

inUSEnglish	^ self using: (WALocale fromString: 'en-US')!

using: aWALocale	^ self new initializeUsing: aWALocale! !
!BootstrapSelectOnlineLibrary class categoriesFor: #default!accessing!public! !
!BootstrapSelectOnlineLibrary class categoriesFor: #inSpanish!Instance Creation!public! !
!BootstrapSelectOnlineLibrary class categoriesFor: #inUSEnglish!Instance Creation!public! !
!BootstrapSelectOnlineLibrary class categoriesFor: #using:!Instance Creation!public! !

