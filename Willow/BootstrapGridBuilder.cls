﻿"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapGridBuilder
	instanceVariableNames: 'columnSpec rowCommand cellCommand columnBreakpointBlock contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapGridBuilder guid: (GUID fromString: '{a8a0b4e0-fe78-4b7e-b58c-3c70fa78e710}')!
BootstrapGridBuilder comment: 'I''m a builder easing the creation of Bootstrap grids'!
!BootstrapGridBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapGridBuilder methodsFor!

addContent: aRenderable

applyingToCells: aCellCommand

buildApplying: aRowCommand

columnCountPerRow

columnsPerRow: anInteger

columnsWidths: aCollection

contentIndexAt: rowIndex and: columnIndex

forExtraSmallDevices

forLargeDevices

forMediumDevices

forSmallDevices

initialize

numberOfRows

renderColumnsAt: rowIndex on: aCanvas

renderContentAt: aContentIndex spanning: aColumnCount on: aCanvas
!BootstrapGridBuilder categoriesFor: #addContent:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #applyingToCells:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #buildApplying:!building!public! !
!BootstrapGridBuilder categoriesFor: #columnCountPerRow!private! !
!BootstrapGridBuilder categoriesFor: #columnsPerRow:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #columnsWidths:!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #contentIndexAt:and:!private! !
!BootstrapGridBuilder categoriesFor: #forExtraSmallDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forLargeDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forMediumDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #forSmallDevices!Configuring!public! !
!BootstrapGridBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapGridBuilder categoriesFor: #numberOfRows!private! !
!BootstrapGridBuilder categoriesFor: #renderColumnsAt:on:!private! !
!BootstrapGridBuilder categoriesFor: #renderContentAt:spanning:on:!private! !
