"Filed out from Dolphin Smalltalk 7"!

Bootstrap3DropdownBuilder subclass: #Bootstrap3SplitButtonDropdownBuilder
	instanceVariableNames: 'mainButtonBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3SplitButtonDropdownBuilder guid: (GUID fromString: '{17680222-4362-4824-b6cf-6071843271d8}')!
Bootstrap3SplitButtonDropdownBuilder comment: 'I create split button dropdowns with the same markup changes, only with a separate button.'!
!Bootstrap3SplitButtonDropdownBuilder categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3SplitButtonDropdownBuilder methodsFor!

buildApplying: aComponentCommand	^ BootstrapSplitButtonWebView		with:			( GenericContainerWebView				wrapping: self content				applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap3 buttonGroup ] )		and: mainButtonBinding content!

initialize	super initialize.	mainButtonBinding := Binding undefinedExplainedBy: 'Missing main button definition'!

labeled: aRenderable applying: aComponentCommand	self labeled: aRenderable applyingToMainButton: [  ] andToBoth: aComponentCommand!

labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand	| mainButton |	mainButton := supplier asynchronicButtonLabeled: aRenderable applying: theMainButtonCommand asWebComponentCommand + theSplitButtonCommand asWebComponentCommand.	mainButtonBinding := Binding to: mainButton.	buttonBinding := Binding to: [ :canvas | 		canvas			render: mainButton;			render:				(supplier					asynchronicButtonLabeled: [ :innerCanvas | self renderCaretOn: innerCanvas ]					applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + theSplitButtonCommand asWebComponentCommand ]) ]! !
!Bootstrap3SplitButtonDropdownBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap3SplitButtonDropdownBuilder categoriesFor: #initialize!Configuring!public! !
!Bootstrap3SplitButtonDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!Bootstrap3SplitButtonDropdownBuilder categoriesFor: #labeled:applyingToMainButton:andToBoth:!Configuring!public! !

