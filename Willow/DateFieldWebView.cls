"Filed out from Dolphin Smalltalk 7"!

FieldWebView subclass: #DateFieldWebView
	instanceVariableNames: 'textField textCodec'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DateFieldWebView guid: (GUID fromString: '{2e385fb0-246e-450c-bdbb-dd9de5f3c573}')!
DateFieldWebView comment: 'I represent a TextField containing dates.'!
!DateFieldWebView categoriesForClass!Willow-WebViews! !
!DateFieldWebView methodsFor!

changeDateTo: aDate	self changeModelTo: aDate!

date	^ self model!

identifierPrefix	^ 'date-field'!

initializeTransformingWith: aTextCodec	textCodec := aTextCodec!

textCodec	^ textCodec! !
!DateFieldWebView categoriesFor: #changeDateTo:!Date/Container/API!public! !
!DateFieldWebView categoriesFor: #date!Date/Container/API!public! !
!DateFieldWebView categoriesFor: #identifierPrefix!private / Accessing!public! !
!DateFieldWebView categoriesFor: #initializeTransformingWith:!initialization!public! !
!DateFieldWebView categoriesFor: #textCodec!private / Accessing!public! !

!DateFieldWebView class methodsFor!

applying: aComponentCommand	^ self applying: aComponentCommand transformingWith: ISODateCodec new!

applying: aComponentCommand transformingWith: aTextCodec	^ (self forComponentBuiltUsing: [ :canvas | canvas textInput ] withInteractionDefinedBy: self changeInterpreter applying: [ :field | field beDateInput + aComponentCommand ] asWebComponentCommand)		initializeTransformingWith: aTextCodec! !
!DateFieldWebView class categoriesFor: #applying:!instance creation!public! !
!DateFieldWebView class categoriesFor: #applying:transformingWith:!instance creation!public! !

