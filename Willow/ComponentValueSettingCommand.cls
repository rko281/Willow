﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #ComponentValueSettingCommand
	instanceVariableNames: 'valueProvider identifierProvider triggeringAction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentValueSettingCommand guid: (GUID fromString: '{a4d74fc4-2b3c-4e82-ac24-757854b3a44e}')!
ComponentValueSettingCommand comment: 'I''m a WebInteractionCommand used to change the value of some input field. I can be configured to trigger a change event.'!
!ComponentValueSettingCommand categoriesForClass!Willow-WebInteraction! !
!ComponentValueSettingCommand methodsFor!

clientIndependentActions

initializeObtainingIdentifierFrom: anIdentifierProvider valueFrom: aValueProvider triggeringAction: anAction

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!ComponentValueSettingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!ComponentValueSettingCommand categoriesFor: #initializeObtainingIdentifierFrom:valueFrom:triggeringAction:!initialize/release!public! !
!ComponentValueSettingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!ComponentValueSettingCommand categoriesFor: #priorityActions!accessing!public! !
!ComponentValueSettingCommand categoriesFor: #requiresSerialization!public!testing! !
!ComponentValueSettingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!ComponentValueSettingCommand class methodsFor!

obtainingIdentifierFrom: anIdentifierProvider valueFrom: aValueProvider

obtainingIdentifierFrom: aValueProvider valueFrom: anIdentifierProvider triggeringAction: aTriggeringAction

triggeringChangesObtainingIdentifierFrom: anIdentifierProvider valueFrom: aValueProvider
!ComponentValueSettingCommand class categoriesFor: #obtainingIdentifierFrom:valueFrom:!instance creation!public! !
!ComponentValueSettingCommand class categoriesFor: #obtainingIdentifierFrom:valueFrom:triggeringAction:!private! !
!ComponentValueSettingCommand class categoriesFor: #triggeringChangesObtainingIdentifierFrom:valueFrom:!instance creation!public! !
