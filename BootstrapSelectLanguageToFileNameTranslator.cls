"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #BootstrapSelectLanguageToFileNameTranslator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectLanguageToFileNameTranslator guid: (GUID fromString: '{19ce5868-b2d7-44e3-86b5-d32159b1748c}')!
BootstrapSelectLanguageToFileNameTranslator comment: 'I''m a translator capable of taking an instance of WALocale and return the file name to be used in the libraries'!
!BootstrapSelectLanguageToFileNameTranslator categoriesForClass!Willow-Bootstrap-Select! !
!BootstrapSelectLanguageToFileNameTranslator methodsFor!

fileNameFrom: aWALocale	^ #('en-US' 'de-DE' 'es-ES' 'es-CL' 'fr-FR' 'it-IT' 'pt-BR' 'pt-PT' 'ja-JP' 'et-EE' 'kh-KM' 'vi-VN')		detect: [ :locale | locale = aWALocale greaseString ]		ifFound: [ :locale | 'defaults-<1s>_<2s>' expandMacrosWith: aWALocale language with: aWALocale country asUppercase ]		ifNone: [ aWALocale withoutCountry greaseString = 'en'				ifTrue: [ 'defaults-en_US' ]				ifFalse: [ #('de' 'en' 'es' 'fr' 'it' 'pt')						detect: [ :language | language = aWALocale withoutCountry greaseString ]						ifFound: [ :locale | 'defaults-<1s>_<2s>' expandMacrosWith: locale with: locale asUppercase ]						ifNone: [ 'defaults-en_US' ] ] ]! !
!BootstrapSelectLanguageToFileNameTranslator categoriesFor: #fileNameFrom:!Accessing!public! !

