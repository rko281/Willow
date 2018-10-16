"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #BootstrapDatepickerFormat
	instanceVariableNames: 'options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerFormat guid: (GUID fromString: '{7df0bc23-fed7-4142-b441-82e4cb26546f}')!
BootstrapDatepickerFormat comment: 'Custom formatting options    toDisplay: function (date, format, language) to convert date object to string, that will be stored in input field    toValue: function (date, format, language) to convert string object to date, that will be used in date selection'!
!BootstrapDatepickerFormat categoriesForClass!Willow-Bootstrap-Datepicker! !
!BootstrapDatepickerFormat methodsFor!

initializeFormattingWith: aJSFormattingFunction parsingWith: aJSParsingFunction	options := GRSmallDictionary new.	options		at: 'toDisplay' put: aJSFormattingFunction;		at: 'toValue' put: aJSParsingFunction!

javascriptContentOn: aStream	aStream javascript: options! !
!BootstrapDatepickerFormat categoriesFor: #initializeFormattingWith:parsingWith:!initialization!public! !
!BootstrapDatepickerFormat categoriesFor: #javascriptContentOn:!printing!public! !

!BootstrapDatepickerFormat class methodsFor!

formattingWith: aJSFormattingFunction parsingWith: aJSParsingFunction	^ self new initializeFormattingWith: aJSFormattingFunction parsingWith: aJSParsingFunction! !
!BootstrapDatepickerFormat class categoriesFor: #formattingWith:parsingWith:!Instance Creation!public! !

