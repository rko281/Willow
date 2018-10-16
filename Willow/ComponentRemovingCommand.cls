﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #ComponentRemovingCommand
	instanceVariableNames: 'identifiedView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentRemovingCommand guid: (GUID fromString: '{7b6b3def-4a9b-4023-8972-02737eb9d5e2}')!
ComponentRemovingCommand comment: 'I''m a WebInteractionCommand allowing to remove a component'!
!ComponentRemovingCommand categoriesForClass!Willow-WebInteraction! !
!ComponentRemovingCommand methodsFor!

clientIndependentActions

initializeFor: anIdentifiedView

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!ComponentRemovingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!ComponentRemovingCommand categoriesFor: #initializeFor:!initialize/release!public! !
!ComponentRemovingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!ComponentRemovingCommand categoriesFor: #priorityActions!accessing!public! !
!ComponentRemovingCommand categoriesFor: #requiresSerialization!public!testing! !
!ComponentRemovingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!ComponentRemovingCommand class methodsFor!

for: anIdentifiedView
!ComponentRemovingCommand class categoriesFor: #for:!instance creation!public! !
