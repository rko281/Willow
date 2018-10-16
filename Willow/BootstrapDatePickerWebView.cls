"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapDatePickerWebView
	instanceVariableNames: 'textField container'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatePickerWebView guid: (GUID fromString: '{0daf2512-8f07-4d20-9d61-7f89b4154bec}')!
BootstrapDatePickerWebView comment: 'I represent a bootstrap-datepicker component'!
!BootstrapDatePickerWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapDatePickerWebView methodsFor!

initializeWrapping: aTextField applying: aComponentCommand	textField := aTextField.	container := GenericContainerWebView		wrapping: [ :canvas | 			canvas render: self textField.			canvas div with: [ canvas small: (BootstrapIconWebView representing: Glyphicons triangleBottom) ] applying: [ :div | div addClass bootstrap inputGroupAddon ] ]		applying: [ :div | div addClass bootstrap inputGroup + div addClass bootstrap date + BootstrapDatepickerCommand new + aComponentCommand ]!

renderContentOn: aCanvas	aCanvas render: container!

textField	^ textField! !
!BootstrapDatePickerWebView categoriesFor: #initializeWrapping:applying:!initialization!public! !
!BootstrapDatePickerWebView categoriesFor: #renderContentOn:!initialization!public! !
!BootstrapDatePickerWebView categoriesFor: #textField!accessing!public! !

!BootstrapDatePickerWebView class methodsFor!

wrapping: aTextFieldWebView	^ self wrapping: aTextFieldWebView applying: [ :field |  ]!

wrapping: aTextFieldWebView applying: aComponentCommand	^ self new initializeWrapping: aTextFieldWebView applying: aComponentCommand! !
!BootstrapDatePickerWebView class categoriesFor: #wrapping:!Instance Creation!public! !
!BootstrapDatePickerWebView class categoriesFor: #wrapping:applying:!Instance Creation!public! !

