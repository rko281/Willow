﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #SetComponentTabIndexCommand
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetComponentTabIndexCommand guid: (GUID fromString: '{646bb22e-aa49-4637-ac58-d3af873b15cb}')!
SetComponentTabIndexCommand comment: 'A command to set the tab index/order of a component.'!
!SetComponentTabIndexCommand categoriesForClass!Willow-Frontend! !
!SetComponentTabIndexCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeSetting: anIndex
!SetComponentTabIndexCommand categoriesFor: #applyTo:on:!processing!public! !
!SetComponentTabIndexCommand categoriesFor: #initializeSetting:!initialize/release!public! !

!SetComponentTabIndexCommand class methodsFor!

setting: anIndex
!SetComponentTabIndexCommand class categoriesFor: #setting:!instance creation!public! !
