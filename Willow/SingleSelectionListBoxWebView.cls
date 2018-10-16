﻿"Filed out from Dolphin Smalltalk 7"!

SingleSelectionWebViewBehavior subclass: #SingleSelectionListBoxWebView
	instanceVariableNames: 'interactionInterpreter commandToComponent identifierAssigner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SingleSelectionListBoxWebView guid: (GUID fromString: '{6adcaef7-bffc-411f-9ef2-f0fe7749dabd}')!
SingleSelectionListBoxWebView comment: 'I''m a list box, that allows the user to select one item from a list contained within a static, multiple line text box. The user clicks inside the box on an item to select it.'!
!SingleSelectionListBoxWebView categoriesForClass!Willow-WebViews! !
!SingleSelectionListBoxWebView methodsFor!

configure: select unselectingAllOn: aCanvas

identifier

identifyIn: aCanvas

initializeApplying: aCommandToComponent

onTrigger

renderContentOn: aCanvas
!SingleSelectionListBoxWebView categoriesFor: #configure:unselectingAllOn:!private! !
!SingleSelectionListBoxWebView categoriesFor: #identifier!accessing!public! !
!SingleSelectionListBoxWebView categoriesFor: #identifyIn:!configuring!public! !
!SingleSelectionListBoxWebView categoriesFor: #initializeApplying:!initialization!public! !
!SingleSelectionListBoxWebView categoriesFor: #onTrigger!configuring!public! !
!SingleSelectionListBoxWebView categoriesFor: #renderContentOn:!public!rendering! !

!SingleSelectionListBoxWebView class methodsFor!

displayingAtOnce: aNumberOfElements

displayingAtOnce: aNumberOfElements applying: aCommandComponent
!SingleSelectionListBoxWebView class categoriesFor: #displayingAtOnce:!instance creation!public! !
!SingleSelectionListBoxWebView class categoriesFor: #displayingAtOnce:applying:!instance creation!public! !
