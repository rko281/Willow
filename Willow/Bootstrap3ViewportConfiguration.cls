"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #Bootstrap3ViewportConfiguration
	instanceVariableNames: 'selector padding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3ViewportConfiguration guid: (GUID fromString: '{ec5c8c5d-34cc-4c6f-87ab-7950fe339681}')!
Bootstrap3ViewportConfiguration comment: 'I''m a JSObject representing a viewport configuration for Bootstrap.'!
!Bootstrap3ViewportConfiguration categoriesForClass!Willow-Bootstrap-3-Plugins! !
!Bootstrap3ViewportConfiguration methodsFor!

initialize	super initialize.	selector := 'body'.	padding := 0!

javascriptContentOn: aStream	aStream nextPut: ${.	JSStream encodeKey: 'selector' value: selector on: aStream.	aStream nextPut: $,.	JSStream encodeKey: 'padding' value: padding on: aStream.	aStream nextPut: $}!

selector: aString padding: aNumber	selector := aString.	padding := aNumber! !
!Bootstrap3ViewportConfiguration categoriesFor: #initialize!initialization!public! !
!Bootstrap3ViewportConfiguration categoriesFor: #javascriptContentOn:!printing!public! !
!Bootstrap3ViewportConfiguration categoriesFor: #selector:padding:!Configuring!public! !

