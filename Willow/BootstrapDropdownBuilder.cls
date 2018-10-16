﻿"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapDropdownBuilder
	instanceVariableNames: 'menuItems supplier buttonBinding listClassificationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDropdownBuilder guid: (GUID fromString: '{fcf541c4-6c2d-4ada-a7ee-9ef7311dc389}')!
BootstrapDropdownBuilder comment: 'I''m an abstract for building dropdown related components.'!
!BootstrapDropdownBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapDropdownBuilder methodsFor!

addActionLabeled: aRenderable executing: anActionBlock

addActionLabeled: aRenderable executing: anActionBlock applying: aCommand

addDivider

addHeaderLabeled: aRenderable

beRightAligned

content

dropdownCommandFor: button using: constants

initializeUsing: aSupplier

labeled: aRenderable applying: aComponentCommand

renderCaretOn: canvas
!BootstrapDropdownBuilder categoriesFor: #addActionLabeled:executing:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addActionLabeled:executing:applying:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addDivider!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #addHeaderLabeled:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #beRightAligned!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #content!private! !
!BootstrapDropdownBuilder categoriesFor: #dropdownCommandFor:using:!private! !
!BootstrapDropdownBuilder categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!BootstrapDropdownBuilder categoriesFor: #renderCaretOn:!private! !

!BootstrapDropdownBuilder class methodsFor!

using: aComponentSupplier
!BootstrapDropdownBuilder class categoriesFor: #using:!instance creation!public! !
