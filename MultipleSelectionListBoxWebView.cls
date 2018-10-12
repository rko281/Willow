"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #MultipleSelectionListBoxWebView
	instanceVariableNames: 'availableElements chosenElements interested interactionInterpreter commandToComponent identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MultipleSelectionListBoxWebView guid: (GUID fromString: '{fd967849-b684-465c-aee6-9c6c05e7d523}')!
MultipleSelectionListBoxWebView comment: 'I''m a list box, that allows the user to select one or more items from a list contained within a static, multiple line text box. The user clicks inside the box on an item to select it.'!
!MultipleSelectionListBoxWebView categoriesForClass!Willow-WebViews! !
!MultipleSelectionListBoxWebView methodsFor!

allowAnyOf: anElementCollection	availableElements := anElementCollection.	self chooseAllIn: chosenElements!

allowsAnySatisfying: aMatchBlock	^availableElements anySatisfy: aMatchBlock!

chooseAll	chosenElements := availableElements.	self notifyInterested!

chooseAllIn: anElementCollection	self chooseAllMatching: [ :available | anElementCollection includes: available ]!

chooseAllMatching: aMonadycBlock	chosenElements := availableElements select: aMonadycBlock.	self notifyInterested!

currentSelection	^chosenElements !

disallowAll	self allowAnyOf: #()!

identifier	^identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeApplying: aCommandToComponent	interested := Set new.	commandToComponent := aCommandToComponent.	interactionInterpreter := WebInteractionInterpreter		forChangeInHiddenInputDependentComponentValue.	identifierAssigner := IdentifierAssigner prefixedBy: 'list-box'.	self disallowAll!

notifyChangesTo: aSupervisor	interested add: aSupervisor!

notifyInterested	interested do: [ :anInterested | anInterested changeNotifiedBy: self ]!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	| select |	select := aCanvas multiSelect.	select		list: availableElements;		callback: [ :elements | self chooseAllIn: elements ];		selected: chosenElements.	identifierAssigner withAssignedIdentifierDo: [ :id | select id: id ].	select		interactUsing: interactionInterpreter;		apply: commandToComponent! !
!MultipleSelectionListBoxWebView categoriesFor: #allowAnyOf:!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #allowsAnySatisfying:!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #chooseAll!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #chooseAllIn:!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #chooseAllMatching:!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #currentSelection!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #disallowAll!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #identifier!accessing!public! !
!MultipleSelectionListBoxWebView categoriesFor: #identifyIn:!configuring!public! !
!MultipleSelectionListBoxWebView categoriesFor: #initializeApplying:!initialization!public! !
!MultipleSelectionListBoxWebView categoriesFor: #notifyChangesTo:!Multiple Selection/API!public! !
!MultipleSelectionListBoxWebView categoriesFor: #notifyInterested!private! !
!MultipleSelectionListBoxWebView categoriesFor: #onTrigger!configuring!public! !
!MultipleSelectionListBoxWebView categoriesFor: #renderContentOn:!public!rendering! !

!MultipleSelectionListBoxWebView class methodsFor!

applying: aCommandToComponent	^self new initializeApplying: aCommandToComponent asWebComponentCommand !

displayingAtOnce: aNumberOfElements applying: aCommandComponent	AssertionChecker enforce: [ aNumberOfElements > 1 ] because: 'A list box must display more than one element'.	^ self applying: (SetComponentSizeCommand setting: aNumberOfElements) + aCommandComponent! !
!MultipleSelectionListBoxWebView class categoriesFor: #applying:!instance creation!public! !
!MultipleSelectionListBoxWebView class categoriesFor: #displayingAtOnce:applying:!instance creation!public! !

