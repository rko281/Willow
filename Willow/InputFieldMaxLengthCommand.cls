"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #InputFieldMaxLengthCommand
	instanceVariableNames: 'maxLength'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
InputFieldMaxLengthCommand guid: (GUID fromString: '{467c81f1-468d-4da6-a441-9b06fa5a8bc8}')!
InputFieldMaxLengthCommand comment: 'Command to configure maximum length of an input field'!
!InputFieldMaxLengthCommand categoriesForClass!Willow-Frontend! !
!InputFieldMaxLengthCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent maxLength: maxLength!

initializeAllowingUpTo: anAmount	maxLength := anAmount! !
!InputFieldMaxLengthCommand categoriesFor: #applyTo:on:!processing!public! !
!InputFieldMaxLengthCommand categoriesFor: #initializeAllowingUpTo:!initialization!public! !

!InputFieldMaxLengthCommand class methodsFor!

allowingUpTo: anAmount	^self new initializeAllowingUpTo: anAmount! !
!InputFieldMaxLengthCommand class categoriesFor: #allowingUpTo:!Instance Creation!public! !

