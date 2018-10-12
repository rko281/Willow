"Filed out from Dolphin Smalltalk 7"!

BootstrapDropdownBuilder subclass: #BootstrapSplitButtonDropdownBuilder
	instanceVariableNames: 'mainButtonBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSplitButtonDropdownBuilder guid: (GUID fromString: '{4278dd51-78b9-42ed-a008-f00459e300cc}')!
BootstrapSplitButtonDropdownBuilder comment: 'I create split button dropdowns with the same markup changes, only with a separate button.'!
!BootstrapSplitButtonDropdownBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapSplitButtonDropdownBuilder methodsFor!

buildApplying: aComponentCommand	^ BootstrapSplitButtonWebView		with: (GenericContainerWebView wrapping: self content applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap buttonGroup ])		and: mainButtonBinding content!

initialize	super initialize.	mainButtonBinding := Binding undefinedExplainedBy: 'Missing main button definition'!

labeled: aRenderable applying: aComponentCommand	self labeled: aRenderable applyingToMainButton: [  ] andToBoth: aComponentCommand!

labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand	| mainButton |	mainButton := supplier asynchronicButtonLabeled: aRenderable applying: theMainButtonCommand asWebComponentCommand + theSplitButtonCommand asWebComponentCommand.	mainButtonBinding := Binding to: mainButton.	buttonBinding := Binding to: [ :canvas | 		canvas			render: mainButton;			render:				(supplier					asynchronicButtonLabeled: [ :innerCanvas | self renderCaretOn: innerCanvas ]					applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + theSplitButtonCommand asWebComponentCommand ]) ]! !
!BootstrapSplitButtonDropdownBuilder categoriesFor: #buildApplying:!building!public! !
!BootstrapSplitButtonDropdownBuilder categoriesFor: #initialize!Configuring!public! !
!BootstrapSplitButtonDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!BootstrapSplitButtonDropdownBuilder categoriesFor: #labeled:applyingToMainButton:andToBoth:!Configuring!public! !

