﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentClassificationCommand
	instanceVariableNames: 'cssStyles'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentClassificationCommand guid: (GUID fromString: '{303d76c1-d702-4b82-8879-c9e3c4f8a6a0}')!
ComponentClassificationCommand comment: 'Command to add css styles to a component (using class:/classes:).'!
!ComponentClassificationCommand categoriesForClass!Willow-Frontend! !
!ComponentClassificationCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeToStyleWithAll: aCssStyleCollection
!ComponentClassificationCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentClassificationCommand categoriesFor: #initializeToStyleWithAll:!initialize/release!public! !

!ComponentClassificationCommand class methodsFor!

toStyleWith: aCssStyle

toStyleWithAll: aCssStyleCollection
!ComponentClassificationCommand class categoriesFor: #toStyleWith:!instance creation!public! !
!ComponentClassificationCommand class categoriesFor: #toStyleWithAll:!instance creation!public! !
