﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #TemporarilyDisablingCommand
	instanceVariableNames: 'componentProvider viewWhileDisabled'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TemporarilyDisablingCommand guid: (GUID fromString: '{c00b30be-1f0a-4de9-b53f-7e41c378e3f6}')!
TemporarilyDisablingCommand comment: 'I''m a WebInteractionCommand that disable an specific component during an AJAX call execution.'!
!TemporarilyDisablingCommand categoriesForClass!Willow-WebInteraction! !
!TemporarilyDisablingCommand methodsFor!

clientIndependentActions

componentToDisableOn: aCanvas

disabledAttributeName

disabledComponentVariableName

initializeTransformingComponentMatching: aComponentProvider into: aViewWhileDisabled

modelLoadingActions

priorityActions

requiresSerialization

serverIndependentActions
!TemporarilyDisablingCommand categoriesFor: #clientIndependentActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #componentToDisableOn:!private! !
!TemporarilyDisablingCommand categoriesFor: #disabledAttributeName!private! !
!TemporarilyDisablingCommand categoriesFor: #disabledComponentVariableName!private! !
!TemporarilyDisablingCommand categoriesFor: #initializeTransformingComponentMatching:into:!initialization!public! !
!TemporarilyDisablingCommand categoriesFor: #modelLoadingActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #priorityActions!accessing!public! !
!TemporarilyDisablingCommand categoriesFor: #requiresSerialization!public!testing! !
!TemporarilyDisablingCommand categoriesFor: #serverIndependentActions!accessing!public! !

!TemporarilyDisablingCommand class methodsFor!

transforming: anIdentifieView into: aViewWhileDisabled

transformingComponentMatching: aComponentProvider into: aViewWhileDisabled

transformingCurrentViewInto: aViewWhileDisabled
!TemporarilyDisablingCommand class categoriesFor: #transforming:into:!Instance Creation!public! !
!TemporarilyDisablingCommand class categoriesFor: #transformingComponentMatching:into:!Instance Creation!public! !
!TemporarilyDisablingCommand class categoriesFor: #transformingCurrentViewInto:!Instance Creation!public! !
