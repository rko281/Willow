﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #SetRowSpanCommand
	instanceVariableNames: 'rowSpan'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SetRowSpanCommand guid: (GUID fromString: '{315e1738-a59d-4015-9e0b-165103f883fb}')!
SetRowSpanCommand comment: 'A command to set the rowSpan of a table cell.'!
!SetRowSpanCommand categoriesForClass!Willow-Frontend! !
!SetRowSpanCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeSetting: aRowSpan
!SetRowSpanCommand categoriesFor: #applyTo:on:!processing!public! !
!SetRowSpanCommand categoriesFor: #initializeSetting:!initialization!public! !

!SetRowSpanCommand class methodsFor!

setting: aRowSpan
!SetRowSpanCommand class categoriesFor: #setting:!instance creation!public! !
