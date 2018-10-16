"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #UnorderedListWebView
	instanceVariableNames: 'elements commandToItem commandToList interactionInterpreter identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UnorderedListWebView guid: (GUID fromString: '{f322af3e-974e-4505-ab7b-1b5689d6920d}')!
UnorderedListWebView comment: 'I represent an unordered list supporting command application.'!
!UnorderedListWebView categoriesForClass!Willow-WebViews! !
!UnorderedListWebView methodsFor!

identifier	^ identifierAssigner assignedIdentifier!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas!

initializeApplying: aComponentCommand listing: anElementCollection applyingToEach: anElementCommand	elements := anElementCollection.	commandToItem := anElementCommand.	commandToList := aComponentCommand.	interactionInterpreter := WebInteractionInterpreter forClickOnComponent.	identifierAssigner := IdentifierAssigner prefixedBy: 'unordered-list' !

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	| list |	list := aCanvas unorderedList.	"The order of the collaborations is relevant."	identifierAssigner withAssignedIdentifierDo: [ :id | list id: id ].	list		apply: commandToList;		interactUsing: interactionInterpreter;		with: [ elements do: [ :anElement | aCanvas render: (ListItemWebView itemizing: anElement containedIn: list applying: commandToItem) ] ]! !
!UnorderedListWebView categoriesFor: #identifier!accessing!public! !
!UnorderedListWebView categoriesFor: #identifyIn:!configuring!public! !
!UnorderedListWebView categoriesFor: #initializeApplying:listing:applyingToEach:!initialization!public! !
!UnorderedListWebView categoriesFor: #onTrigger!configuring!public! !
!UnorderedListWebView categoriesFor: #renderContentOn:!public!rendering! !

!UnorderedListWebView class methodsFor!

applying: aComponentCommand listing: anElementCollection applyingToEach: anElementCommand	^ self new		initializeApplying: aComponentCommand asWebComponentCommand		listing: anElementCollection		applyingToEach: anElementCommand asWebComponentCommand! !
!UnorderedListWebView class categoriesFor: #applying:listing:applyingToEach:!instance creation!public! !

