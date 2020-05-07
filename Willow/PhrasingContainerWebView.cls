"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #PhrasingContainerWebView
	instanceVariableNames: 'phrasingContentProvider interactionInterpreter commandToComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PhrasingContainerWebView guid: (GUID fromString: '{8c334f1d-fa4e-4ff1-9e83-84440bec1d53}')!
PhrasingContainerWebView comment: 'I represent a generic container for phrasing content, which don''t inherently represent anything. I can be used to group elements for styling purposes (using the class or id attributes), or because they share attribute values, such as lang. I should be used only when no other semantic element is appropriate.'!
!PhrasingContainerWebView categoriesForClass!Willow-Core-WebViews! !
!PhrasingContainerWebView methodsFor!

initializeObtainingContentFrom: aContentProvider applying: aComponentCommand	phrasingContentProvider := aContentProvider.	commandToComponent := aComponentCommand.	interactionInterpreter := WebInteractionInterpreter forClickOnComponent!

onTrigger	^interactionInterpreter!

renderContentOn: aCanvas	aCanvas span		interactUsing: interactionInterpreter;		with: phrasingContentProvider value applying: commandToComponent! !
!PhrasingContainerWebView categoriesFor: #initializeObtainingContentFrom:applying:!initialization!public! !
!PhrasingContainerWebView categoriesFor: #onTrigger!configuring!public! !
!PhrasingContainerWebView categoriesFor: #renderContentOn:!public!rendering! !

!PhrasingContainerWebView class methodsFor!

obtainingContentFrom: aContentProvider	^ self obtainingContentFrom: aContentProvider applying: [ :container |  ]!

obtainingContentFrom: aContentProvider applying: aComponentCommand	^ self new initializeObtainingContentFrom: aContentProvider applying: aComponentCommand asWebComponentCommand !

wrapping: aString applying: aComponentCommand	^ self obtainingContentFrom: [ aString ] applying: aComponentCommand! !
!PhrasingContainerWebView class categoriesFor: #obtainingContentFrom:!Instance Creation!public! !
!PhrasingContainerWebView class categoriesFor: #obtainingContentFrom:applying:!Instance Creation!public! !
!PhrasingContainerWebView class categoriesFor: #wrapping:applying:!Instance Creation!public! !

