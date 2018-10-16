﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ListLabelingCommand
	instanceVariableNames: 'renderingBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ListLabelingCommand guid: (GUID fromString: '{8a15d295-e09b-4de5-84bb-e14d6889aff1}')!
ListLabelingCommand comment: 'Command to configure how to render elements in a list'!
!ListLabelingCommand categoriesForClass!Willow-Frontend! !
!ListLabelingCommand methodsFor!

applyTo: aListComponent on: aCanvas

initializeWith: aRenderingBlock
!ListLabelingCommand categoriesFor: #applyTo:on:!processing!public! !
!ListLabelingCommand categoriesFor: #initializeWith:!initialization!public! !

!ListLabelingCommand class methodsFor!

with: aRenderingBlock
!ListLabelingCommand class categoriesFor: #with:!Instance Creation!public! !
