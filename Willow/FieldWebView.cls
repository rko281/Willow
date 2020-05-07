"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #FieldWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent interested componentBuilder contents identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FieldWebView guid: (GUID fromString: '{9b849f61-e26f-4434-b124-81a4280ad47b}')!
FieldWebView comment: 'I ''m an abstract class representing non textual HTML5 inputs.'!
!FieldWebView categoriesForClass!Willow-Core-WebViews! !
!FieldWebView methodsFor!

changeContentsTo: aText	contents := aText.	self notifyInterested!

changeModelTo: aModel	^ self changeContentsTo: (self textCodec encode: aModel)!

contents	^contents !

identifier	^identifierAssigner assignedIdentifier!

identifierPrefix	^ self subclassResponsibility!

identifyIn: aCanvas	^ identifierAssigner identifyIn: aCanvas !

initializeForComponentBuiltUsing: aComponentBuilder withInteractionDefinedBy: anInteractionInterpreter applying: aComponentCommand	componentBuilder := aComponentBuilder.	interactionInterpreter := anInteractionInterpreter.	commandToComponent := aComponentCommand.	interested := Set new.	identifierAssigner := IdentifierAssigner prefixedBy: self identifierPrefix.	self changeContentsTo: ''!

model	^ self textCodec decode: self contents!

notifyChangesTo: aSupervisor	interested add: aSupervisor!

notifyInterested	interested do: [:anInterested | anInterested changeNotifiedBy: self]!

onTrigger	^ interactionInterpreter!

renderContentOn: aCanvas	| component |	component := componentBuilder value: aCanvas.	component		value: self contents;		callback: [ :aString | self changeContentsTo: aString ].	identifierAssigner withAssignedIdentifierDo: [ :id | component id: id ].	component		apply: commandToComponent;		interactUsing: interactionInterpreter!

textCodec	^ self subclassResponsibility! !
!FieldWebView categoriesFor: #changeContentsTo:!Container/API!public! !
!FieldWebView categoriesFor: #changeModelTo:!Container/API!public! !
!FieldWebView categoriesFor: #contents!Container/API!public! !
!FieldWebView categoriesFor: #identifier!accessing!public! !
!FieldWebView categoriesFor: #identifierPrefix!private / Accessing!public! !
!FieldWebView categoriesFor: #identifyIn:!configuring!public! !
!FieldWebView categoriesFor: #initializeForComponentBuiltUsing:withInteractionDefinedBy:applying:!initialization!public! !
!FieldWebView categoriesFor: #model!Container/API!public! !
!FieldWebView categoriesFor: #notifyChangesTo:!Container/API!public! !
!FieldWebView categoriesFor: #notifyInterested!private! !
!FieldWebView categoriesFor: #onTrigger!configuring!public! !
!FieldWebView categoriesFor: #renderContentOn:!public!rendering! !
!FieldWebView categoriesFor: #textCodec!private / Accessing!public! !

!FieldWebView class methodsFor!

changeInterpreter	^ WebInteractionInterpreter forChangeInComponentValue!

forComponentBuiltUsing: aComponentBuilder withInteractionDefinedBy: anInteractionInterpreter applying: aComponentCommand	^ self new		initializeForComponentBuiltUsing: aComponentBuilder		withInteractionDefinedBy: anInteractionInterpreter		applying: aComponentCommand asWebComponentCommand! !
!FieldWebView class categoriesFor: #changeInterpreter!private! !
!FieldWebView class categoriesFor: #forComponentBuiltUsing:withInteractionDefinedBy:applying:!private! !

