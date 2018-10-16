"Filed out from Dolphin Smalltalk 7"!

TriggeringPolicy subclass: #InteractionScriptTrigger
	instanceVariableNames: 'interacionSelector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
InteractionScriptTrigger guid: (GUID fromString: '{7bf317b3-9503-4389-a075-6ed72d167325}')!
InteractionScriptTrigger comment: ''!
!InteractionScriptTrigger categoriesForClass!Willow-WebInteraction! !
!InteractionScriptTrigger methodsFor!

apply: aJavascriptScript to: aComponent on: aCanvas	aCanvas ensureIdFor: aComponent.	aComponent		script:			(aCanvas jQuery this				perform: interacionSelector				with: (aJavascriptScript asFunction: #(event)))!

initializeInteractSending: anInteracionSelector	interacionSelector := anInteracionSelector! !
!InteractionScriptTrigger categoriesFor: #apply:to:on:!evaluating!public! !
!InteractionScriptTrigger categoriesFor: #initializeInteractSending:!initialization!public! !

!InteractionScriptTrigger class methodsFor!

interactSending: anInteracionSelector	^ self new initializeInteractSending: anInteracionSelector!

triggeringOnChange	^ self interactSending: #onChange:!

triggeringOnClick	^ self interactSending: #onClick:!

triggeringOnDoubleClick	^ self interactSending: #onDoubleClick:!

triggeringOnKeyUp	^ self interactSending: #onKeyUp:! !
!InteractionScriptTrigger class categoriesFor: #interactSending:!instance creation / private!public! !
!InteractionScriptTrigger class categoriesFor: #triggeringOnChange!instance creation!public! !
!InteractionScriptTrigger class categoriesFor: #triggeringOnClick!instance creation!public! !
!InteractionScriptTrigger class categoriesFor: #triggeringOnDoubleClick!instance creation!public! !
!InteractionScriptTrigger class categoriesFor: #triggeringOnKeyUp!instance creation!public! !

