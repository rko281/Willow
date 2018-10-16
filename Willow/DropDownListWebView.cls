"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #DropDownListWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DropDownListWebView guid: (GUID fromString: '{b83a9426-c7ab-4442-a17e-1c6093c95526}')!
DropDownListWebView comment: 'I''m a drop-down list that allows the user to choose one value from a list. When a drop-down list is inactive, it displays a single value. When activated, it displays (drops down) a list of values, from which the user may select one. When the user selects a new value, the control reverts to its inactive state, displaying the selected value.I implement the Single Selection API'!
!DropDownListWebView categoriesForClass!Willow-WebViews! !
!DropDownListWebView methodsFor!

configure: select unselectingAllOn: aCanvas	^ availableElements ifNotEmpty: [ select apply: DeselectAllOptionsCommand new ]!

identifier	^ identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeApplying: aCommandToComponent	commandToComponent := aCommandToComponent.	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.	identifierAssigner := IdentifierAssigner prefixedBy: 'drop-down-list'!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	| select |	select := aCanvas select.	select list: availableElements.	select callback: [ :element | self choose: element ].	identifierAssigner withAssignedIdentifierDo: [ :id | select id: id ].	chosenElementOptional withContentDo: [ :chosenElement | select selected: chosenElement ] ifUnused: [ self configure: select unselectingAllOn: aCanvas ].	select		apply: commandToComponent;		interactUsing: interactionInterpreter! !
!DropDownListWebView categoriesFor: #configure:unselectingAllOn:!private! !
!DropDownListWebView categoriesFor: #identifier!accessing!public! !
!DropDownListWebView categoriesFor: #identifyIn:!configuring!public! !
!DropDownListWebView categoriesFor: #initializeApplying:!initialization!public! !
!DropDownListWebView categoriesFor: #onTrigger!configuring!public! !
!DropDownListWebView categoriesFor: #renderContentOn:!public!rendering! !

!DropDownListWebView class methodsFor!

applying: aCommandToComponent	^ self new initializeApplying: aCommandToComponent asWebComponentCommand! !
!DropDownListWebView class categoriesFor: #applying:!instance creation!public! !

