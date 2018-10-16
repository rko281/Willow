"Filed out from Dolphin Smalltalk 7"!

BootstrapDropdownBuilder subclass: #BootstrapSingleButtonDropdownBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSingleButtonDropdownBuilder guid: (GUID fromString: '{e6d6dc30-60ac-41b1-b448-18e3454b6d8b}')!
BootstrapSingleButtonDropdownBuilder comment: 'I''m a builder for turning a button into a dropdown toggle with some basic markup changes.'!
!BootstrapSingleButtonDropdownBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapSingleButtonDropdownBuilder methodsFor!

buildApplying: aComponentCommand	^ GenericContainerWebView wrapping: self content applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap buttonGroup ]!

labeled: aRenderable applying: aComponentCommand	buttonBinding := Binding to:		(supplier			asynchronicButtonLabeled: [ :canvas | 				canvas render: aRenderable.				self renderCaretOn: canvas ]			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])! !
!BootstrapSingleButtonDropdownBuilder categoriesFor: #buildApplying:!building!public! !
!BootstrapSingleButtonDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !

