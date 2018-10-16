﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #ScrollIntoViewCommand
	instanceVariableNames: 'identifierProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ScrollIntoViewCommand guid: (GUID fromString: '{ddc14602-4bbd-4361-b852-6b3e15b8a54a}')!
ScrollIntoViewCommand comment: 'I''m a WebInteractionCommand that scrolls the web page so that a specific component is visible.'!
!ScrollIntoViewCommand categoriesForClass!Willow-WebInteraction! !
!ScrollIntoViewCommand methodsFor!

clientIndependentActions

identifierToShow

initializeWithComponentIdentifierProvidedBy: anIdentifierProvider

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!ScrollIntoViewCommand categoriesFor: #clientIndependentActions!accessing!public! !
!ScrollIntoViewCommand categoriesFor: #identifierToShow!private / accessing!public! !
!ScrollIntoViewCommand categoriesFor: #initializeWithComponentIdentifierProvidedBy:!initialization!public! !
!ScrollIntoViewCommand categoriesFor: #modelLoadingActions!accessing!public! !
!ScrollIntoViewCommand categoriesFor: #priorityActions!accessing!public! !
!ScrollIntoViewCommand categoriesFor: #requiresSerialization!public!testing! !
!ScrollIntoViewCommand categoriesFor: #serverIndependentActions!accessing!public! !

!ScrollIntoViewCommand class methodsFor!

withComponentIdentifierProvidedBy: anIdentifierProvider
!ScrollIntoViewCommand class categoriesFor: #withComponentIdentifierProvidedBy:!instance creation!public! !
