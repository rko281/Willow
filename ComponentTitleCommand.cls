"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentTitleCommand
	instanceVariableNames: 'titleProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentTitleCommand guid: (GUID fromString: '{b4552967-a879-4d5a-82b8-5aa7ff39de9d}')!
ComponentTitleCommand comment: 'Command to set the title attribute of a component (using title:).'!
!ComponentTitleCommand categoriesForClass!Willow-Frontend! !
!ComponentTitleCommand methodsFor!

applyTo: aComponent on: aCanvas	^ aComponent title: titleProvider value!

initializeToSetUsing: aTitleProvider	titleProvider := aTitleProvider! !
!ComponentTitleCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentTitleCommand categoriesFor: #initializeToSetUsing:!initialize/release!public! !

!ComponentTitleCommand class methodsFor!

toSet: aTitle	^ self toSetUsing: [ aTitle ]!

toSetUsing: aTitleProvider	^ self new initializeToSetUsing: aTitleProvider! !
!ComponentTitleCommand class categoriesFor: #toSet:!instance creation!public! !
!ComponentTitleCommand class categoriesFor: #toSetUsing:!instance creation!public! !

