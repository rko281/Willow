"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #SingleSelectionListBoxWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SingleSelectionListBoxWebView guid: (GUID fromString: '{6adcaef7-bffc-411f-9ef2-f0fe7749dabd}')!
SingleSelectionListBoxWebView comment: 'I''m a list box, that allows the user to select one item from a list contained within a static, multiple line text box. The user clicks inside the box on an item to select it.'!
!SingleSelectionListBoxWebView categoriesForClass!Willow-WebViews! !
!SingleSelectionListBoxWebView methodsFor!

configure: select unselectingAllOn: aCanvas	^ availableElements ifNotEmpty: [ select apply: DeselectAllOptionsCommand new ]!

identifier	^ identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas !

initializeApplying: aCommandToComponent	commandToComponent := aCommandToComponent.	interactionInterpreter := WebInteractionInterpreter forChangeInComponentValue.	identifierAssigner := IdentifierAssigner prefixedBy: 'list-box'!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	| select |	select := aCanvas select.	select list: availableElements.	select callback: [ :element | self choose: element ].	identifierAssigner withAssignedIdentifierDo: [ :id | select id: id ].	chosenElementOptional withContentDo: [ :chosenElement | select selected: chosenElement ] ifUnused: [ self configure: select unselectingAllOn: aCanvas ].	select		interactUsing: interactionInterpreter;		apply: commandToComponent! !
!SingleSelectionListBoxWebView categoriesFor: #configure:unselectingAllOn:!private! !
!SingleSelectionListBoxWebView categoriesFor: #identifier!accessing!public! !
!SingleSelectionListBoxWebView categoriesFor: #identifyIn:!configuring!public! !
!SingleSelectionListBoxWebView categoriesFor: #initializeApplying:!initialization!public! !
!SingleSelectionListBoxWebView categoriesFor: #onTrigger!configuring!public! !
!SingleSelectionListBoxWebView categoriesFor: #renderContentOn:!public!rendering! !

!SingleSelectionListBoxWebView class methodsFor!

displayingAtOnce: aNumberOfElements	^ self displayingAtOnce: aNumberOfElements applying: [ :listBox |  ]!

displayingAtOnce: aNumberOfElements applying: aCommandComponent	AssertionChecker enforce: [ aNumberOfElements > 1 ] because: 'A list box must display more than one element'.	^ self new initializeApplying: (SetComponentSizeCommand setting: aNumberOfElements) + aCommandComponent! !
!SingleSelectionListBoxWebView class categoriesFor: #displayingAtOnce:!instance creation!public! !
!SingleSelectionListBoxWebView class categoriesFor: #displayingAtOnce:applying:!instance creation!public! !

