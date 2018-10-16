﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #FormSubmitCommand
	instanceVariableNames: 'componentProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FormSubmitCommand guid: (GUID fromString: '{68920403-0371-4de9-bf9e-1bf25a2a941a}')!
FormSubmitCommand comment: 'I''m a WebInteractionCommand that helps submiting forms'!
!FormSubmitCommand categoriesForClass!Willow-WebInteraction! !
!FormSubmitCommand methodsFor!

clientIndependentActions

initializeFindingComponentUsing: aComponentProvider

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!FormSubmitCommand categoriesFor: #clientIndependentActions!accessing!public! !
!FormSubmitCommand categoriesFor: #initializeFindingComponentUsing:!initialize / release!public! !
!FormSubmitCommand categoriesFor: #modelLoadingActions!accessing!public! !
!FormSubmitCommand categoriesFor: #priorityActions!accessing!public! !
!FormSubmitCommand categoriesFor: #requiresSerialization!public!testing! !
!FormSubmitCommand categoriesFor: #serverIndependentActions!accessing!public! !

!FormSubmitCommand class methodsFor!

findingComponentUsing: aComponentProvider

forFormStyledAs: aCssStyle
!FormSubmitCommand class categoriesFor: #findingComponentUsing:!instance creation!public! !
!FormSubmitCommand class categoriesFor: #forFormStyledAs:!instance creation!public! !
