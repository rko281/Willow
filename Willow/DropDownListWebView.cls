﻿"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #DropDownListWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DropDownListWebView guid: (GUID fromString: '{b83a9426-c7ab-4442-a17e-1c6093c95526}')!
DropDownListWebView comment: 'I''m a drop-down list that allows the user to choose one value from a list. 
!DropDownListWebView categoriesForClass!Willow-WebViews! !
!DropDownListWebView methodsFor!

configure: select unselectingAllOn: aCanvas

identifier

identifyIn: aCanvas

initializeApplying: aCommandToComponent

onTrigger

renderContentOn: aCanvas
!DropDownListWebView categoriesFor: #configure:unselectingAllOn:!private! !
!DropDownListWebView categoriesFor: #identifier!accessing!public! !
!DropDownListWebView categoriesFor: #identifyIn:!configuring!public! !
!DropDownListWebView categoriesFor: #initializeApplying:!initialization!public! !
!DropDownListWebView categoriesFor: #onTrigger!configuring!public! !
!DropDownListWebView categoriesFor: #renderContentOn:!public!rendering! !

!DropDownListWebView class methodsFor!

applying: aCommandToComponent
!DropDownListWebView class categoriesFor: #applying:!instance creation!public! !
