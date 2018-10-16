﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #ComponentFocusingCommand
	instanceVariableNames: 'componentProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentFocusingCommand guid: (GUID fromString: '{f9e86e27-2e8f-4594-a368-6eb00f7d5e68}')!
ComponentFocusingCommand comment: 'I''m a WebInteractionCommand allowing to put the focus in a component'!
!ComponentFocusingCommand categoriesForClass!Willow-WebInteraction! !
!ComponentFocusingCommand methodsFor!

clientIndependentActions

initializeFindingComponentUsing: aComponentProvider

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!ComponentFocusingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!ComponentFocusingCommand categoriesFor: #initializeFindingComponentUsing:!initialize/release!public! !
!ComponentFocusingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!ComponentFocusingCommand categoriesFor: #priorityActions!accessing!public! !
!ComponentFocusingCommand categoriesFor: #requiresSerialization!public!testing! !
!ComponentFocusingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!ComponentFocusingCommand class methodsFor!

findingComponentUsing: aComponentProvider

for: anIdentifiedView
!ComponentFocusingCommand class categoriesFor: #findingComponentUsing:!instance creation!public! !
!ComponentFocusingCommand class categoriesFor: #for:!instance creation!public! !
