﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentMetadataCommand
	instanceVariableNames: 'name content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentMetadataCommand guid: (GUID fromString: '{cfeff5f1-f931-4c84-85f3-2820376f7e95}')!
ComponentMetadataCommand comment: 'A command to add attributes with custom information:
!ComponentMetadataCommand categoriesForClass!Willow-Frontend! !
!ComponentMetadataCommand methodsFor!

applyTo: aComponent on: aCanvas

dataAttribute

initializeToDeclare: aName with: aContent
!ComponentMetadataCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentMetadataCommand categoriesFor: #dataAttribute!private! !
!ComponentMetadataCommand categoriesFor: #initializeToDeclare:with:!initialize/release!public! !

!ComponentMetadataCommand class methodsFor!

toDeclare: aName with: aContent
!ComponentMetadataCommand class categoriesFor: #toDeclare:with:!instance creation!public! !
