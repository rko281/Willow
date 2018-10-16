"Filed out from Dolphin Smalltalk 7"!

Error subclass: #SelectionIsInvalid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SelectionIsInvalid guid: (GUID fromString: '{d771a94f-7f62-4b71-9d55-4c4ae5f49770}')!
SelectionIsInvalid comment: 'SelectionIsInvalid class	instanceVariableNames: '''''!
!SelectionIsInvalid categoriesForClass!Willow-WebInteraction! !
!SelectionIsInvalid class methodsFor!

signal: aFailureExplanation	^ self signalAll: {aFailureExplanation}!

signalAll: failureExplanations	^ self new		tag: failureExplanations;		signal: ('. ' join: failureExplanations)! !
!SelectionIsInvalid class categoriesFor: #signal:!public!signaling! !
!SelectionIsInvalid class categoriesFor: #signalAll:!public!signaling! !

