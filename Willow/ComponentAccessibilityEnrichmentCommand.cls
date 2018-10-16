﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentAccessibilityEnrichmentCommand
	instanceVariableNames: 'name content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentAccessibilityEnrichmentCommand guid: (GUID fromString: '{26c57af5-e320-41b4-93e0-0bcb5a2d2d56}')!
ComponentAccessibilityEnrichmentCommand comment: 'A command to add attributes with custom information:
!ComponentAccessibilityEnrichmentCommand categoriesForClass!Willow-Frontend! !
!ComponentAccessibilityEnrichmentCommand methodsFor!

applyTo: aComponent on: aCanvas

ariaAttribute

initializeToDeclare: aName with: aContent
!ComponentAccessibilityEnrichmentCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentAccessibilityEnrichmentCommand categoriesFor: #ariaAttribute!private! !
!ComponentAccessibilityEnrichmentCommand categoriesFor: #initializeToDeclare:with:!initialization!public! !

!ComponentAccessibilityEnrichmentCommand class methodsFor!

toDeclare: aName with: aContent
!ComponentAccessibilityEnrichmentCommand class categoriesFor: #toDeclare:with:!instance creation!public! !
