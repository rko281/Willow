﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionInterpreterBehavior subclass: #CombinedWebInteractionInterpreter
	instanceVariableNames: 'interpreters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CombinedWebInteractionInterpreter guid: (GUID fromString: '{e436abba-a53b-4492-89ec-b3b642d7b779}')!
CombinedWebInteractionInterpreter comment: ''!
!CombinedWebInteractionInterpreter categoriesForClass!Willow-WebInteraction! !
!CombinedWebInteractionInterpreter methodsFor!

addCssClass: aCssStyle toComponentsMatching: aComponentProvider

changeCssClass: anExistingStyle to: aNewStyle

closeAllDialogs

closeLastDialog

confirmAsking: aQuestion

determineBehaviorByEvaluating: aCallbackBlock

determineBehaviorByEvaluating: aCallbackBlock with: aParameter

disable

enable: aComponent

executeOnClient: aServerIndependentAction

focus: anIdentifiedWebView

focusUsing: aComponentProvider

inform: aMessage

informSelection

initializeCombining: aWebInteractionInterpreterCollection

interpretersDo: aBlock

onlyWhen: aStringCondition determineBehaviorByEvaluating: aCallbackBlock with: aParameter

open: aView

remove: anIdentifiedView

removeCssClass: aCssStyle fromComponentsMatching: aComponentProvider

render: anIdentifiedView

renderAll: anIdentifiedViewCollection

scrollingIntoView: anIdentifier

serializeChildForm

serializeContainerForm

serializeForm: anIdentifiedForm

serializeIt

serializeWithHiddenInputs

setValueTo: aValueProvider thenTriggerChangeOf: anIdentifiedView

setValueTo: aValueProvider withoutTriggeringChangeOnComponentWithId: identifier

showLoadingNotificationStyledAsAll: classes

submitForm: anIdentifiedForm

submitFormStyledAs: aCssStyle

temporarilyDisableAndTransform: anIdentifiedView into: aView

temporarilyDisableAndTransformInto: aView

toggleCssClass: aCssStyle onComponentsMatching: aComponentProvider
!CombinedWebInteractionInterpreter categoriesFor: #addCssClass:toComponentsMatching:!Configuring / CSS!public! !
!CombinedWebInteractionInterpreter categoriesFor: #changeCssClass:to:!Configuring / CSS!public! !
!CombinedWebInteractionInterpreter categoriesFor: #closeAllDialogs!Configuring / Dialogs!public! !
!CombinedWebInteractionInterpreter categoriesFor: #closeLastDialog!Configuring / Dialogs!public! !
!CombinedWebInteractionInterpreter categoriesFor: #confirmAsking:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #determineBehaviorByEvaluating:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #determineBehaviorByEvaluating:with:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #disable!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #enable:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #executeOnClient:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #focus:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #focusUsing:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #inform:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #informSelection!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #initializeCombining:!initialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #interpretersDo:!private! !
!CombinedWebInteractionInterpreter categoriesFor: #onlyWhen:determineBehaviorByEvaluating:with:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #open:!Configuring / Dialogs!public! !
!CombinedWebInteractionInterpreter categoriesFor: #remove:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #removeCssClass:fromComponentsMatching:!Configuring / CSS!public! !
!CombinedWebInteractionInterpreter categoriesFor: #render:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #renderAll:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #scrollingIntoView:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeChildForm!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeContainerForm!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeForm:!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeIt!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeWithHiddenInputs!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #setValueTo:thenTriggerChangeOf:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #setValueTo:withoutTriggeringChangeOnComponentWithId:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #showLoadingNotificationStyledAsAll:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #submitForm:!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #submitFormStyledAs:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransform:into:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransformInto:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #toggleCssClass:onComponentsMatching:!Configuring / CSS!public! !

!CombinedWebInteractionInterpreter class methodsFor!

combining: aWebInteractionInterpreterCollection

combiningInterpretersOf: aWebViewCollection
!CombinedWebInteractionInterpreter class categoriesFor: #combining:!instance creation!public! !
!CombinedWebInteractionInterpreter class categoriesFor: #combiningInterpretersOf:!instance creation!public! !
