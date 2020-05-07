"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentScriptCommand
	instanceVariableNames: 'scriptProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentScriptCommand guid: (GUID fromString: '{b82023dc-0d28-4622-8805-bf9c3f491be1}')!
ComponentScriptCommand comment: 'Command to execute a JS script on  a component (using script:).'!
!ComponentScriptCommand categoriesForClass!Willow-Core-Frontend! !
!ComponentScriptCommand methodsFor!

applyTo: aComponent on: aCanvas	^ aComponent script: (scriptProvider cull: aCanvas)!

initializeToExecute: aScriptProvider	scriptProvider := aScriptProvider! !
!ComponentScriptCommand categoriesFor: #applyTo:on:!applying!public! !
!ComponentScriptCommand categoriesFor: #initializeToExecute:!initialize/release!public! !

!ComponentScriptCommand class methodsFor!

toExecute: aScriptProvider	^ self new initializeToExecute: aScriptProvider! !
!ComponentScriptCommand class categoriesFor: #toExecute:!instance creation!public! !

