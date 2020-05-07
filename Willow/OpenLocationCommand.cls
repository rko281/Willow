"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #OpenLocationCommand
	instanceVariableNames: 'destination targetOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OpenLocationCommand guid: (GUID fromString: '{e1c8d079-93d9-44d6-ac7d-754ef9551689}')!
OpenLocationCommand comment: 'Command to configure an anchor to open a destination into a blank page'!
!OpenLocationCommand categoriesForClass!Willow-Core-Frontend! !
!OpenLocationCommand methodsFor!

applyTo: anAnchorComponent on: aCanvas	anAnchorComponent url: destination.	targetOptional		withContentDo: [ :target | 			anAnchorComponent				target: target;				relationship: 'noopener noreferrer' ]!

initializeNavigatingTo: aLocation targetingAccordingTo: aTargetOptional	destination := aLocation.	targetOptional := aTargetOptional! !
!OpenLocationCommand categoriesFor: #applyTo:on:!processing!public! !
!OpenLocationCommand categoriesFor: #initializeNavigatingTo:targetingAccordingTo:!initialization!public! !

!OpenLocationCommand class methodsFor!

forNewBrowsingContextNavigatingTo: aLocation	^ self navigatingTo: aLocation targetingAccordingTo: (Optional containing: '_blank')!

forSameBrowsingContextNavigatingTo: aLocation	^ self navigatingTo: aLocation targetingAccordingTo: Optional unused!

navigatingTo: aLocation targetingAccordingTo: aTargetOptional	^ self new initializeNavigatingTo: aLocation targetingAccordingTo: aTargetOptional! !
!OpenLocationCommand class categoriesFor: #forNewBrowsingContextNavigatingTo:!instance creation!public! !
!OpenLocationCommand class categoriesFor: #forSameBrowsingContextNavigatingTo:!instance creation!public! !
!OpenLocationCommand class categoriesFor: #navigatingTo:targetingAccordingTo:!private / instance creation!public! !

