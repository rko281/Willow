"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #BootstrapViewportConfiguration
	instanceVariableNames: 'selector padding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapViewportConfiguration guid: (GUID fromString: '{01a8803e-969f-4f46-b735-53d14b2e671a}')!
BootstrapViewportConfiguration comment: 'I''m a JSObject representing a viewport configuration for Bootstrap.'!
!BootstrapViewportConfiguration categoriesForClass!Willow-Bootstrap-Plugins! !
!BootstrapViewportConfiguration methodsFor!

initialize	super initialize.	selector := 'body'.	padding := 0!

javascriptContentOn: aStream	aStream nextPut: ${.	JSStream encodeKey: 'selector' value: selector on: aStream.	aStream nextPut: $,.	JSStream encodeKey: 'padding' value: padding on: aStream.	aStream nextPut: $}!

selector: aString padding: aNumber	selector := aString.	padding := aNumber! !
!BootstrapViewportConfiguration categoriesFor: #initialize!initialization!public! !
!BootstrapViewportConfiguration categoriesFor: #javascriptContentOn:!printing!public! !
!BootstrapViewportConfiguration categoriesFor: #selector:padding:!Configuring!public! !

