﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentScriptCommand
	instanceVariableNames: 'scriptProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentScriptCommand guid: (GUID fromString: '{b82023dc-0d28-4622-8805-bf9c3f491be1}')!
ComponentScriptCommand comment: 'Command to execute a JS script on  a component (using script:).'!
!ComponentScriptCommand categoriesForClass!Willow-Frontend! !
!ComponentScriptCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeToExecute: aScriptProvider
!ComponentScriptCommand categoriesFor: #applyTo:on:!applying!public! !
!ComponentScriptCommand categoriesFor: #initializeToExecute:!initialize/release!public! !

!ComponentScriptCommand class methodsFor!

toExecute: aScriptProvider
!ComponentScriptCommand class categoriesFor: #toExecute:!instance creation!public! !
