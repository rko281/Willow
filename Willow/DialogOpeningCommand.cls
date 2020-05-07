"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #DialogOpeningCommand
	instanceVariableNames: 'dialogView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DialogOpeningCommand guid: (GUID fromString: '{666bdc51-f3ec-4330-b845-99493e391c1b}')!
DialogOpeningCommand comment: 'I''m a WebInteractionCommand used to create and open a Dialog. The created Dialog will be appended to a section in the DOM.'!
!DialogOpeningCommand categoriesForClass!Willow-Core-WebInteraction! !
!DialogOpeningCommand methodsFor!

clientIndependentActions	^#()!

initializeAlwaysOpening: aDialogView	dialogView := aDialogView!

modelLoadingActions	^ Array with: [ :aScript :aCanvas | aScript << (DialogOpener new open: dialogView on: aCanvas) ]!

priorityActions	^#()!

requiresSerialization	^false!

serverIndependentActions	^#()! !
!DialogOpeningCommand categoriesFor: #clientIndependentActions!accessing!public! !
!DialogOpeningCommand categoriesFor: #initializeAlwaysOpening:!initialize/release!public! !
!DialogOpeningCommand categoriesFor: #modelLoadingActions!accessing!public! !
!DialogOpeningCommand categoriesFor: #priorityActions!accessing!public! !
!DialogOpeningCommand categoriesFor: #requiresSerialization!accessing!public! !
!DialogOpeningCommand categoriesFor: #serverIndependentActions!accessing!public! !

!DialogOpeningCommand class methodsFor!

alwaysOpening: aDialogView	^ self new initializeAlwaysOpening: aDialogView! !
!DialogOpeningCommand class categoriesFor: #alwaysOpening:!instance creation!public! !

