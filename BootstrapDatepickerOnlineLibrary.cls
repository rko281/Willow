"Filed out from Dolphin Smalltalk 7"!

WAOnlineLibrary subclass: #BootstrapDatepickerOnlineLibrary
	instanceVariableNames: 'locale'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerOnlineLibrary guid: (GUID fromString: '{bf77a674-1ddc-441c-b850-20161143f5c8}')!
BootstrapDatepickerOnlineLibrary comment: 'I''m a WALibary serving the files from the official CDN.'!
!BootstrapDatepickerOnlineLibrary categoriesForClass!Willow-Bootstrap-Datepicker! !
!BootstrapDatepickerOnlineLibrary methodsFor!

initializeUsing: aWALocale	locale := aWALocale!

updateLocaleIn: aRoot	| fileName |	fileName := BootstrapDatepickerLanguageToFileNameTranslator new fileNameFrom: locale ifNone: [ "If nothing is specified the us locale will be used" ^ self ].	aRoot javascript url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/locales/<2s>.min.js' expandMacrosWith: self version with: fileName)!

updateRoot: aRoot	aRoot stylesheet		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/css/bootstrap-datepicker3.min.css' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha256-mlKJFBS1jbZwwDrZD1ApO7YFS6MA1XDN37jZ9GDFC64='. 	aRoot javascript		url: ('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/<1s>/js/bootstrap-datepicker.min.js' expandMacrosWith: self version);		anonymousSubResourceIntegrity: 'sha256-tW5LzEC7QjhG0CiAvxlseMTs2qJS7u3DRPauDjFJ3zo='.	self updateLocaleIn: aRoot!

version	^ '1.8.0'! !
!BootstrapDatepickerOnlineLibrary categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapDatepickerOnlineLibrary categoriesFor: #updateLocaleIn:!private! !
!BootstrapDatepickerOnlineLibrary categoriesFor: #updateRoot:!public!Updating! !
!BootstrapDatepickerOnlineLibrary categoriesFor: #version!public!Updating! !

!BootstrapDatepickerOnlineLibrary class methodsFor!

default	^ self using: (WALocale fromString: 'en')!

using: aWALocale	^ self new initializeUsing: aWALocale! !
!BootstrapDatepickerOnlineLibrary class categoriesFor: #default!instance creation!public! !
!BootstrapDatepickerOnlineLibrary class categoriesFor: #using:!instance creation!public! !

