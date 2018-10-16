"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #DialogOpener
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
DialogOpener guid: (GUID fromString: '{d22038a7-09a1-48a8-b44b-8e18afc8378d}')!
DialogOpener comment: 'I help in opening dialogs. Useful outside of the DialogOpeningCommand.'!
!DialogOpener categoriesForClass!Willow-WebInteraction! !
!DialogOpener methodsFor!

open: aDialogView on: aCanvas	^ (aCanvas jQuery id: Constants >> #willow >> #dialogSectionName)		append: [ :aSubCanvas | aSubCanvas render: aDialogView ]! !
!DialogOpener categoriesFor: #open:on:!actions!public! !

