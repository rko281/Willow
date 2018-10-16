﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #OpenLocationCommand
	instanceVariableNames: 'destination targetOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OpenLocationCommand guid: (GUID fromString: '{e1c8d079-93d9-44d6-ac7d-754ef9551689}')!
OpenLocationCommand comment: 'Command to configure an anchor to open a destination into a blank page'!
!OpenLocationCommand categoriesForClass!Willow-Frontend! !
!OpenLocationCommand methodsFor!

applyTo: anAnchorComponent on: aCanvas

initializeNavigatingTo: aLocation targetingAccordingTo: aTargetOptional
!OpenLocationCommand categoriesFor: #applyTo:on:!processing!public! !
!OpenLocationCommand categoriesFor: #initializeNavigatingTo:targetingAccordingTo:!initialization!public! !

!OpenLocationCommand class methodsFor!

forNewBrowsingContextNavigatingTo: aLocation

forSameBrowsingContextNavigatingTo: aLocation

navigatingTo: aLocation targetingAccordingTo: aTargetOptional
!OpenLocationCommand class categoriesFor: #forNewBrowsingContextNavigatingTo:!instance creation!public! !
!OpenLocationCommand class categoriesFor: #forSameBrowsingContextNavigatingTo:!instance creation!public! !
!OpenLocationCommand class categoriesFor: #navigatingTo:targetingAccordingTo:!private / instance creation!public! !
