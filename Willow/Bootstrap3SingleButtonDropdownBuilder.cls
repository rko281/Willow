"Filed out from Dolphin Smalltalk 7"!

Bootstrap3DropdownBuilder subclass: #Bootstrap3SingleButtonDropdownBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3SingleButtonDropdownBuilder guid: (GUID fromString: '{9d23ef70-58fd-4184-9b61-9295096c026c}')!
Bootstrap3SingleButtonDropdownBuilder comment: 'I''m a builder for turning a button into a dropdown toggle with some basic markup changes.'!
!Bootstrap3SingleButtonDropdownBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3SingleButtonDropdownBuilder methodsFor!

buildApplying: aComponentCommand	^ GenericContainerWebView		wrapping: self content		applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap3 buttonGroup ]!

labeled: aRenderable applying: aComponentCommand	buttonBinding := Binding to:		(supplier			asynchronicButtonLabeled: [ :canvas | 				canvas render: aRenderable.				self renderCaretOn: canvas ]			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])! !
!Bootstrap3SingleButtonDropdownBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap3SingleButtonDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !

