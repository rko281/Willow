"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentPlaceholderCommand
	instanceVariableNames: 'suggestion'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentPlaceholderCommand guid: (GUID fromString: '{bac8c2a5-5849-467e-912c-f923693389b3}')!
ComponentPlaceholderCommand comment: 'A command to assign a hint for a component, using the placeholder attribute.'!
!ComponentPlaceholderCommand categoriesForClass!Willow-Frontend! !
!ComponentPlaceholderCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent placeholder: suggestion!

initializeSuggestedBy: aSuggestion	suggestion := aSuggestion! !
!ComponentPlaceholderCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentPlaceholderCommand categoriesFor: #initializeSuggestedBy:!initialization!public! !

!ComponentPlaceholderCommand class methodsFor!

suggestedBy: aSuggestion	^self new initializeSuggestedBy: aSuggestion! !
!ComponentPlaceholderCommand class categoriesFor: #suggestedBy:!Instance Creation!public! !

