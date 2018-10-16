﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #SetColumnSpanCommand
	instanceVariableNames: 'colSpan'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetColumnSpanCommand guid: (GUID fromString: '{233150f6-473f-4259-9f4f-3db4135f43d5}')!
SetColumnSpanCommand comment: 'A command to set the colSpan of a table column.'!
!SetColumnSpanCommand categoriesForClass!Willow-Frontend! !
!SetColumnSpanCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeSetting: aColSpan
!SetColumnSpanCommand categoriesFor: #applyTo:on:!processing!public! !
!SetColumnSpanCommand categoriesFor: #initializeSetting:!initialize/release!public! !

!SetColumnSpanCommand class methodsFor!

setting: aColSpan
!SetColumnSpanCommand class categoriesFor: #setting:!instance creation!public! !
