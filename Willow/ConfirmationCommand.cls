﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #ConfirmationCommand
	instanceVariableNames: 'question'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ConfirmationCommand guid: (GUID fromString: '{73d8d864-2106-454f-b2de-bfa0d92402c0}')!
ConfirmationCommand comment: 'I''m a WebInteractionCommand used to ask the user for confirmation before proceeding.'!
!ConfirmationCommand categoriesForClass!Willow-WebInteraction! !
!ConfirmationCommand methodsFor!

clientIndependentActions

initializeAsking: aQuestion

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!ConfirmationCommand categoriesFor: #clientIndependentActions!accessing!public! !
!ConfirmationCommand categoriesFor: #initializeAsking:!initialize/release!public! !
!ConfirmationCommand categoriesFor: #modelLoadingActions!accessing!public! !
!ConfirmationCommand categoriesFor: #priorityActions!accessing!public! !
!ConfirmationCommand categoriesFor: #requiresSerialization!public!testing! !
!ConfirmationCommand categoriesFor: #serverIndependentActions!accessing!public! !

!ConfirmationCommand class methodsFor!

asking: aQuestion
!ConfirmationCommand class categoriesFor: #asking:!instance creation!public! !
