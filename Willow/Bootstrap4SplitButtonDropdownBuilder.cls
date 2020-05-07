"Filed out from Dolphin Smalltalk 7"!

Bootstrap4DropdownBuilder subclass: #Bootstrap4SplitButtonDropdownBuilder
	instanceVariableNames: 'mainButtonBinding'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4SplitButtonDropdownBuilder guid: (GUID fromString: '{00d7b0c5-032c-41dc-aa9a-19f1441e4a74}')!
Bootstrap4SplitButtonDropdownBuilder comment: ''!
!Bootstrap4SplitButtonDropdownBuilder categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4SplitButtonDropdownBuilder methodsFor!

buildApplying: aComponentCommand	^ BootstrapSplitButtonWebView		with:			( GenericContainerWebView				wrapping: self content				applying: [ :div | aComponentCommand asWebComponentCommand + div addClass bootstrap4 buttonGroup ] )		and: mainButtonBinding content!

initialize	super initialize.	mainButtonBinding := Binding undefinedExplainedBy: 'Missing main button definition'!

labeled: aRenderable applying: aComponentCommand	self labeled: aRenderable applyingToMainButton: [  ] andToBoth: aComponentCommand!

labeled: aRenderable applyingToMainButton: theMainButtonCommand andToBoth: theSplitButtonCommand	| mainButton |	mainButton := supplier		asynchronicButtonLabeled: aRenderable		applying: theMainButtonCommand asWebComponentCommand + theSplitButtonCommand asWebComponentCommand.	mainButtonBinding := Binding to: mainButton.	buttonBinding := Binding to: [ :canvas | 		canvas			render: mainButton;			render:				( supplier					asynchronicButtonLabeled: [ :innerCanvas | 						innerCanvas span							with: 'Toggle dropdown'							applying: [ :span | span addClass bootstrapCommon screenReaderOnly ]						]					applying: [ :button :constants | 						( self dropdownCommandFor: button using: constants )							+ button addClass bootstrap4 dropdownToggleSplit							+ theSplitButtonCommand asWebComponentCommand						] )		]! !
!Bootstrap4SplitButtonDropdownBuilder categoriesFor: #buildApplying:!building!public! !
!Bootstrap4SplitButtonDropdownBuilder categoriesFor: #initialize!Configuring!public! !
!Bootstrap4SplitButtonDropdownBuilder categoriesFor: #labeled:applying:!Configuring!public! !
!Bootstrap4SplitButtonDropdownBuilder categoriesFor: #labeled:applyingToMainButton:andToBoth:!Configuring!public! !

