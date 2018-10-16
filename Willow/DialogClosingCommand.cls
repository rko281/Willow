﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #DialogClosingCommand
	instanceVariableNames: 'dialogSupplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DialogClosingCommand guid: (GUID fromString: '{28ed3b0c-fba6-4320-889b-11fb4ea4cebc}')!
DialogClosingCommand comment: 'I''m a WebInteractionCommand used to close a Dialog. I will not destroy the dialog, just hide it.
!DialogClosingCommand categoriesForClass!Willow-WebInteraction! !
!DialogClosingCommand methodsFor!

clientIndependentActions

initializeObtainingDialogsWith: aDialogSupplier

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!DialogClosingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!DialogClosingCommand categoriesFor: #initializeObtainingDialogsWith:!initialization!public! !
!DialogClosingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!DialogClosingCommand categoriesFor: #priorityActions!accessing!public! !
!DialogClosingCommand categoriesFor: #requiresSerialization!public!testing! !
!DialogClosingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!DialogClosingCommand class methodsFor!

forAllDialogs

obtainingDialogsWith: aDialogSupplier

onlyForLastDialog
!DialogClosingCommand class categoriesFor: #forAllDialogs!Instance Creation!public! !
!DialogClosingCommand class categoriesFor: #obtainingDialogsWith:!private/instance creation!public! !
!DialogClosingCommand class categoriesFor: #onlyForLastDialog!Instance Creation!public! !
