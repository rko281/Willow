﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #DelayedModelLoader
	instanceVariableNames: 'commands'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DelayedModelLoader guid: (GUID fromString: '{40fc5d9d-c0f6-4b54-8a3b-9d27ed69b2e6}')!
DelayedModelLoader comment: ''!
!DelayedModelLoader categoriesForClass!Willow-WebInteraction! !
!DelayedModelLoader methodsFor!

applyTo: aScript on: aCanvas

commandsDo: aBlock

initialize

onTriggerExecute: anInteractionCommand
!DelayedModelLoader categoriesFor: #applyTo:on:!evaluating!public! !
!DelayedModelLoader categoriesFor: #commandsDo:!private! !
!DelayedModelLoader categoriesFor: #initialize!initialize/release!public! !
!DelayedModelLoader categoriesFor: #onTriggerExecute:!configuring!public! !

!DelayedModelLoader class methodsFor!

new
!DelayedModelLoader class categoriesFor: #new!instance creation!public! !
