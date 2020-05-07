"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #Bootstrap3DatePickerWebView
	instanceVariableNames: 'textField container'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3DatePickerWebView guid: (GUID fromString: '{f57c9af9-865a-41b3-9270-78f2952564e9}')!
Bootstrap3DatePickerWebView comment: 'I represent a bootstrap-datepicker component'!
!Bootstrap3DatePickerWebView categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3DatePickerWebView methodsFor!

initializeWrapping: aTextField applying: aComponentCommand	textField := aTextField.	container := GenericContainerWebView		wrapping: [ :canvas | 			canvas render: self textField.			canvas div				with: [ canvas small: ( Bootstrap3IconWebView representing: Glyphicons triangleBottom ) ]				applying: [ :div | div addClass bootstrap3 inputGroupAddon ]			]		applying: [ :div | 			div addClass bootstrap3 inputGroup + div addClass bootstrap3 date + BootstrapDatepickerCommand new				+ aComponentCommand			]!

renderContentOn: aCanvas	aCanvas render: container!

textField	^ textField! !
!Bootstrap3DatePickerWebView categoriesFor: #initializeWrapping:applying:!initialization!public! !
!Bootstrap3DatePickerWebView categoriesFor: #renderContentOn:!initialization!public! !
!Bootstrap3DatePickerWebView categoriesFor: #textField!accessing!public! !

!Bootstrap3DatePickerWebView class methodsFor!

wrapping: aTextFieldWebView	^ self wrapping: aTextFieldWebView applying: [ :field |  ]!

wrapping: aTextFieldWebView applying: aComponentCommand	^ self new initializeWrapping: aTextFieldWebView applying: aComponentCommand! !
!Bootstrap3DatePickerWebView class categoriesFor: #wrapping:!Instance Creation!public! !
!Bootstrap3DatePickerWebView class categoriesFor: #wrapping:applying:!Instance Creation!public! !

