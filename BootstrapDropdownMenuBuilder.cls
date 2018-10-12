"Filed out from Dolphin Smalltalk 7"!

BootstrapDropdownBuilder subclass: #BootstrapDropdownMenuBuilder
	instanceVariableNames: 'containerBuildingCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDropdownMenuBuilder guid: (GUID fromString: '{d4b69ae1-7f5a-4b0c-afa8-ab76b335a31a}')!
BootstrapDropdownMenuBuilder comment: 'I''m a builder of bootstrap dropdown menus'!
!BootstrapDropdownMenuBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapDropdownMenuBuilder methodsFor!

beNavigationMenuIn: aNavigationBar	containerBuildingCommand := [ :containerCommand | ListItemWebView itemizing: self content containedIn: aNavigationBar applying: [ :listItem | containerCommand asWebComponentCommand + listItem addClass bootstrap dropdown ] ]!

buildApplying: aComponentCommand	^ containerBuildingCommand value: aComponentCommand asWebComponentCommand !

initializeUsing: aSupplier	super initializeUsing: aSupplier.	containerBuildingCommand := [ :containerCommand | GenericContainerWebView wrapping: self content applying: [ :div | containerCommand asWebComponentCommand + div addClass bootstrap dropdown ] ]!

labeled: aRenderable	buttonBinding := Binding to:		(supplier			asynchronicLinkLabeled: [ :canvas | 				canvas render: aRenderable.				self renderCaretOn: canvas ]			applying: [ :button :constants | (button setARIARoleTo: #button) + (self dropdownCommandFor: button using: constants) ])!

labeled: aRenderable applying: aComponentCommand	buttonBinding := Binding to:		(supplier			asynchronicButtonLabeled: [ :canvas | 				canvas render: aRenderable.				self renderCaretOn: canvas ]			applying: [ :button :constants | (self dropdownCommandFor: button using: constants) + aComponentCommand ])! !
!BootstrapDropdownMenuBuilder categoriesFor: #beNavigationMenuIn:!Configuring!public! !
!BootstrapDropdownMenuBuilder categoriesFor: #buildApplying:!building!public! !
!BootstrapDropdownMenuBuilder categoriesFor: #initializeUsing:!initialization!public! !
!BootstrapDropdownMenuBuilder categoriesFor: #labeled:!Configuring!public! !
!BootstrapDropdownMenuBuilder categoriesFor: #labeled:applying:!Configuring!public! !

