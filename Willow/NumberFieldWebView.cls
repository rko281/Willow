﻿"Filed out from Dolphin Smalltalk 7"!

FieldWebView subclass: #NumberFieldWebView
	instanceVariableNames: 'textCodec'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NumberFieldWebView guid: (GUID fromString: '{a9859524-81ee-40a0-bb9a-a3cbac85ba5c}')!
NumberFieldWebView comment: 'I represent a TextField containing numbers.'!
!NumberFieldWebView categoriesForClass!Willow-WebViews! !
!NumberFieldWebView methodsFor!

changeNumberTo: aNumber

identifierPrefix

initializeTransformingWith: aTextCodec

number

textCodec
!NumberFieldWebView categoriesFor: #changeNumberTo:!number/container/API!public! !
!NumberFieldWebView categoriesFor: #identifierPrefix!private / Accessing!public! !
!NumberFieldWebView categoriesFor: #initializeTransformingWith:!initialization!public! !
!NumberFieldWebView categoriesFor: #number!number/container/API!public! !
!NumberFieldWebView categoriesFor: #textCodec!private / Accessing!public! !

!NumberFieldWebView class methodsFor!

applying: aComponentCommand transformingWith: aTextCodec
!NumberFieldWebView class categoriesFor: #applying:transformingWith:!instance creation!public! !
