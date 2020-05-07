"Filed out from Dolphin Smalltalk 7"!

Bootstrap4DropdownBuilder subclass: #Bootstrap4SingleButtonDropdownBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4SingleButtonDropdownBuilder guid: (GUID fromString: '{62a25d21-2d4b-4a30-a1c4-99d8ae1ce3ff}')!
Bootstrap4SingleButtonDropdownBuilder comment: ''!
!Bootstrap4SingleButtonDropdownBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4SingleButtonDropdownBuilder methodsFor!

buildApplying: aComponentCommand	^ GenericContainerWebView		wrapping: self content		applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap4 dropdown ]!

labeled: aRenderable applying: aComponentCommand	buttonBinding := Binding to:		( supplier			asynchronicButtonLabeled: aRenderable			applying: [ :button :constants | ( self dropdownCommandFor: button using: constants ) + aComponentCommand ] )! !
!Bootstrap4SingleButtonDropdownBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap4SingleButtonDropdownBuilder categoriesFor: #labeled:applying:!configuring!public! !

