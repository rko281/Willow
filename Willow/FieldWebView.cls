﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #FieldWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent interested componentBuilder contents identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FieldWebView guid: (GUID fromString: '{9b849f61-e26f-4434-b124-81a4280ad47b}')!
FieldWebView comment: 'I ''m an abstract class representing non textual HTML5 inputs.'!
!FieldWebView categoriesForClass!Willow-WebViews! !
!FieldWebView methodsFor!

changeContentsTo: aText

changeModelTo: aModel

contents

identifier

identifierPrefix

identifyIn: aCanvas

initializeForComponentBuiltUsing: aComponentBuilder withInteractionDefinedBy: anInteractionInterpreter applying: aComponentCommand

model

notifyChangesTo: aSupervisor

notifyInterested

onTrigger

renderContentOn: aCanvas

textCodec
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

changeInterpreter

forComponentBuiltUsing: aComponentBuilder withInteractionDefinedBy: anInteractionInterpreter applying: aComponentCommand
!FieldWebView class categoriesFor: #changeInterpreter!private! !
!FieldWebView class categoriesFor: #forComponentBuiltUsing:withInteractionDefinedBy:applying:!private! !
