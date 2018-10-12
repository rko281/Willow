"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #BootstrapDatepickerLanguageToFileNameTranslator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerLanguageToFileNameTranslator guid: (GUID fromString: '{ce604291-e8a2-40a8-969c-955fa9f30973}')!
BootstrapDatepickerLanguageToFileNameTranslator comment: 'I''m a translator capable of taking an instance of WALocale and return the file name to be used in the libraries'!
!BootstrapDatepickerLanguageToFileNameTranslator categoriesForClass!Willow-Bootstrap-Datepicker! !
!BootstrapDatepickerLanguageToFileNameTranslator methodsFor!

fileNameFrom: aWALocale ifNone: aBlock	^ #('en-CA' 'en-AU' 'en-GB' 'en-IE' 'en-NZ' 'en-ZA' 'fr-CH' 'it-CH' 'pt-BR')		detect: [ :locale | locale = aWALocale greaseString ]		ifFound: [ :locale | 'bootstrap-datepicker.<1s>' expandMacrosWith: locale ]		ifNone: [ #('de' 'es' 'fr' 'it' 'pt') detect: [ :language | language = aWALocale withoutCountry greaseString ] ifFound: [ :locale | 'bootstrap-datepicker.<1s>' expandMacrosWith: locale ] ifNone: aBlock ]! !
!BootstrapDatepickerLanguageToFileNameTranslator categoriesFor: #fileNameFrom:ifNone:!Accessing!public! !

