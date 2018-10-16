﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #ComponentEnableStatusChangingCommand
	instanceVariableNames: 'componentProvider desiredStatus'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentEnableStatusChangingCommand guid: (GUID fromString: '{6c4971d2-e246-4ac9-84d3-c64fd4633c39}')!
ComponentEnableStatusChangingCommand comment: 'I''m a WebInteractionCommand allowing to enable or disable a component. 
!ComponentEnableStatusChangingCommand categoriesForClass!Willow-WebInteraction! !
!ComponentEnableStatusChangingCommand methodsFor!

clientIndependentActions

initializeObtainingComponentWith: aComponentProvider settingStatusTo: aBoolean

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!ComponentEnableStatusChangingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!ComponentEnableStatusChangingCommand categoriesFor: #initializeObtainingComponentWith:settingStatusTo:!initialization!public! !
!ComponentEnableStatusChangingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!ComponentEnableStatusChangingCommand categoriesFor: #priorityActions!accessing!public! !
!ComponentEnableStatusChangingCommand categoriesFor: #requiresSerialization!public!testing! !
!ComponentEnableStatusChangingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!ComponentEnableStatusChangingCommand class methodsFor!

disablingCurrentComponent

enabling: anIdentifiedComponent

obtainingComponentWith: aComponentProvider settingStatusTo: aBoolean
!ComponentEnableStatusChangingCommand class categoriesFor: #disablingCurrentComponent!Instance Creation!public! !
!ComponentEnableStatusChangingCommand class categoriesFor: #enabling:!Instance Creation!public! !
!ComponentEnableStatusChangingCommand class categoriesFor: #obtainingComponentWith:settingStatusTo:!private! !
