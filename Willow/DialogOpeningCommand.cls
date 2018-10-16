﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #DialogOpeningCommand
	instanceVariableNames: 'dialogView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DialogOpeningCommand guid: (GUID fromString: '{666bdc51-f3ec-4330-b845-99493e391c1b}')!
DialogOpeningCommand comment: 'I''m a WebInteractionCommand used to create and open a Dialog. 
!DialogOpeningCommand categoriesForClass!Willow-WebInteraction! !
!DialogOpeningCommand methodsFor!

clientIndependentActions

initializeAlwaysOpening: aDialogView

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!DialogOpeningCommand categoriesFor: #clientIndependentActions!accessing!public! !
!DialogOpeningCommand categoriesFor: #initializeAlwaysOpening:!initialize/release!public! !
!DialogOpeningCommand categoriesFor: #modelLoadingActions!accessing!public! !
!DialogOpeningCommand categoriesFor: #priorityActions!accessing!public! !
!DialogOpeningCommand categoriesFor: #requiresSerialization!accessing!public! !
!DialogOpeningCommand categoriesFor: #serverIndependentActions!accessing!public! !

!DialogOpeningCommand class methodsFor!

alwaysOpening: aDialogView
!DialogOpeningCommand class categoriesFor: #alwaysOpening:!instance creation!public! !
