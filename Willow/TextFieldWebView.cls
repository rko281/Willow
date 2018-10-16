﻿"Filed out from Dolphin Smalltalk 7"!

FieldWebView subclass: #TextFieldWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TextFieldWebView guid: (GUID fromString: '{37e0a991-aa72-4fdd-82b3-5edbd9163b43}')!
TextFieldWebView comment: 'I enable the user to input text information. I support single-line text box when only one line of input is required, and a multi-line text box only if more than one line of input may be required.'!
!TextFieldWebView categoriesForClass!Willow-WebViews! !
!TextFieldWebView methodsFor!

identifierPrefix

textCodec
!TextFieldWebView categoriesFor: #identifierPrefix!private / Accessing!public! !
!TextFieldWebView categoriesFor: #textCodec!private / Accessing!public! !

!TextFieldWebView class methodsFor!

multiLineTriggeringOnChangeApplying: aComponentCommand

multiLineTriggeringOnKeyUpApplying: aComponentCommand

singleLineTriggeringOnChangeApplying: aComponentCommand

singleLineTriggeringOnKeyUpApplying: aComponentCommand
!TextFieldWebView class categoriesFor: #multiLineTriggeringOnChangeApplying:!Instance Creation!public! !
!TextFieldWebView class categoriesFor: #multiLineTriggeringOnKeyUpApplying:!Instance Creation!public! !
!TextFieldWebView class categoriesFor: #singleLineTriggeringOnChangeApplying:!Instance Creation!public! !
!TextFieldWebView class categoriesFor: #singleLineTriggeringOnKeyUpApplying:!Instance Creation!public! !
