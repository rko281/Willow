﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentErrorCommand
	instanceVariableNames: 'actionProvider'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentErrorCommand guid: (GUID fromString: '{043a7eb6-170a-43a6-b20e-44a0547cc15b}')!
ComponentErrorCommand comment: 'Command to determine behavior when a component signals an error (using onError:).'!
!ComponentErrorCommand categoriesForClass!Willow-Frontend! !
!ComponentErrorCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeToActUsing: anActionProvider
!ComponentErrorCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentErrorCommand categoriesFor: #initializeToActUsing:!initialize/release!public! !

!ComponentErrorCommand class methodsFor!

toActUsing: anActionProvider
!ComponentErrorCommand class categoriesFor: #toActUsing:!instance creation!public! !
