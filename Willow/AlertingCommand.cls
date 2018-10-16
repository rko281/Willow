﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #AlertingCommand
	instanceVariableNames: 'messageProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AlertingCommand guid: (GUID fromString: '{d4405328-0c1b-43f4-82ca-65b9aaba4979}')!
AlertingCommand comment: 'I''m a WebInteractionCommand used to show an alert, useful for low level debugging purposes.'!
!AlertingCommand categoriesForClass!Willow-WebInteraction! !
!AlertingCommand methodsFor!

clientIndependentActions

initializeObtainingMessageFrom: aMessageProvider

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!AlertingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!AlertingCommand categoriesFor: #initializeObtainingMessageFrom:!initialize/release!public! !
!AlertingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!AlertingCommand categoriesFor: #priorityActions!accessing!public! !
!AlertingCommand categoriesFor: #requiresSerialization!public!testing! !
!AlertingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!AlertingCommand class methodsFor!

informingSelection

obtainingMessageFrom: aMessageProvider

stating: aText
!AlertingCommand class categoriesFor: #informingSelection!instance creation!public! !
!AlertingCommand class categoriesFor: #obtainingMessageFrom:!instance creation!public! !
!AlertingCommand class categoriesFor: #stating:!instance creation!public! !
