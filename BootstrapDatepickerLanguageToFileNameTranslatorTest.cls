"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #BootstrapDatepickerLanguageToFileNameTranslatorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerLanguageToFileNameTranslatorTest guid: (GUID fromString: '{215b728f-a338-4221-8c10-9fae582f7e4c}')!
BootstrapDatepickerLanguageToFileNameTranslatorTest comment: 'A BootstrapDatepickerLanguageToFileNameTranslatorTest is a test class for testing the behavior of BootstrapDatepickerLanguageToFileNameTranslator'!
!BootstrapDatepickerLanguageToFileNameTranslatorTest categoriesForClass!Willow-Bootstrap-Tests-Datepicker! !
!BootstrapDatepickerLanguageToFileNameTranslatorTest methodsFor!

fileNameFrom: aLocaleString	^ BootstrapDatepickerLanguageToFileNameTranslator new fileNameFrom: (WALocale fromString: aLocaleString) ifNone: [ self fail ]!

testFileNameFromIfNone	self		assert: (self fileNameFrom: 'en-CA') equals: 'bootstrap-datepicker.en-CA';		assert: (self fileNameFrom: 'en-AU') equals: 'bootstrap-datepicker.en-AU';		assert: (self fileNameFrom: 'en-GB') equals: 'bootstrap-datepicker.en-GB';		assert: (self fileNameFrom: 'en-IE') equals: 'bootstrap-datepicker.en-IE';		assert: (self fileNameFrom: 'en-NZ') equals: 'bootstrap-datepicker.en-NZ';		assert: (self fileNameFrom: 'en-ZA') equals: 'bootstrap-datepicker.en-ZA';		assert: (self fileNameFrom: 'de') equals: 'bootstrap-datepicker.de';		assert: (self fileNameFrom: 'de-DE') equals: 'bootstrap-datepicker.de';		assert: (self fileNameFrom: 'fr') equals: 'bootstrap-datepicker.fr';		assert: (self fileNameFrom: 'fr-FR') equals: 'bootstrap-datepicker.fr';		assert: (self fileNameFrom: 'fr-CH') equals: 'bootstrap-datepicker.fr-CH';		assert: (self fileNameFrom: 'it') equals: 'bootstrap-datepicker.it';		assert: (self fileNameFrom: 'it-IT') equals: 'bootstrap-datepicker.it';		assert: (self fileNameFrom: 'it-CH') equals: 'bootstrap-datepicker.it-CH';		assert: (self fileNameFrom: 'es') equals: 'bootstrap-datepicker.es';		assert: (self fileNameFrom: 'es-ES') equals: 'bootstrap-datepicker.es';		assert: (self fileNameFrom: 'es-AR') equals: 'bootstrap-datepicker.es';		assert: (self fileNameFrom: 'pt') equals: 'bootstrap-datepicker.pt';		assert: (self fileNameFrom: 'pt-PT') equals: 'bootstrap-datepicker.pt';		assert: (self fileNameFrom: 'pt-BR') equals: 'bootstrap-datepicker.pt-BR'! !
!BootstrapDatepickerLanguageToFileNameTranslatorTest categoriesFor: #fileNameFrom:!private! !
!BootstrapDatepickerLanguageToFileNameTranslatorTest categoriesFor: #testFileNameFromIfNone!public!tests/Accessing! !

