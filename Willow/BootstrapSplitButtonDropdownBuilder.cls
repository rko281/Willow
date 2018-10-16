﻿"Filed out from Dolphin Smalltalk 7"!

BootstrapDropdownBuilder subclass: #BootstrapSplitButtonDropdownBuilder
	instanceVariableNames: 'mainButtonBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSplitButtonDropdownBuilder guid: (GUID fromString: '{4278dd51-78b9-42ed-a008-f00459e300cc}')!
BootstrapSplitButtonDropdownBuilder comment: 'I create split button dropdowns with the same markup changes, only with a separate button.'!
!BootstrapSplitButtonDropdownBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapSplitButtonDropdownBuilder methodsFor!

buildApplying: aComponentCommand

initialize

labeled: aRenderable applying: aComponentCommand

labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand
!BootstrapSplitButtonDropdownBuilder categoriesFor: #buildApplying:!building!public! !
!BootstrapSplitButtonDropdownBuilder categoriesFor: #initialize!Configuring!public! !
!BootstrapSplitButtonDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!BootstrapSplitButtonDropdownBuilder categoriesFor: #labeled:applyingToMainButton:andToBoth:!Configuring!public! !
