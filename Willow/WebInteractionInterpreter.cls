﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionInterpreterBehavior subclass: #WebInteractionInterpreter
	instanceVariableNames: 'interaction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebInteractionInterpreter guid: (GUID fromString: '{c6bc89a9-40c6-4473-b84a-bd3b2968024e}')!
WebInteractionInterpreter comment: ''!
!WebInteractionInterpreter categoriesForClass!Willow-WebInteraction! !
!WebInteractionInterpreter methodsFor!

addCssClass: aCssStyle toComponentsMatching: aComponentProvider

applyTo: aComponent on: aCanvas

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

initializeWorkingWith: aWebComponentInteraction

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
!WebInteractionInterpreter categoriesFor: #addCssClass:toComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreter categoriesFor: #applyTo:on:!evaluating!public! !
!WebInteractionInterpreter categoriesFor: #changeCssClass:to:!Configuring / CSS!public! !
!WebInteractionInterpreter categoriesFor: #closeAllDialogs!Configuring / Dialogs!public! !
!WebInteractionInterpreter categoriesFor: #closeLastDialog!Configuring / Dialogs!public! !
!WebInteractionInterpreter categoriesFor: #confirmAsking:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #determineBehaviorByEvaluating:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #determineBehaviorByEvaluating:with:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #disable!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #enable:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #executeOnClient:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #focus:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #focusUsing:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #inform:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #informSelection!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #initializeWorkingWith:!initialization!public! !
!WebInteractionInterpreter categoriesFor: #onlyWhen:determineBehaviorByEvaluating:with:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #open:!Configuring / Dialogs!public! !
!WebInteractionInterpreter categoriesFor: #remove:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #removeCssClass:fromComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreter categoriesFor: #render:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #renderAll:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #scrollingIntoView:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #serializeChildForm!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #serializeContainerForm!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #serializeForm:!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #serializeIt!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #serializeWithHiddenInputs!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #setValueTo:thenTriggerChangeOf:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #setValueTo:withoutTriggeringChangeOnComponentWithId:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #showLoadingNotificationStyledAsAll:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #submitForm:!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #submitFormStyledAs:!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransform:into:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransformInto:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #toggleCssClass:onComponentsMatching:!Configuring / CSS!public! !

!WebInteractionInterpreter class methodsFor!

forChangeInComponentValue

forChangeInHiddenInputDependentComponentValue

forClickOnComponent

forClickOnHiddenInputDependentComponent

forDelayedModelLoading

forDoubleClickOnComponent

forEvaluationOf: aSelector withAll: aParameterArray

forInstantEvaluation

forReleaseOfKeyInComponent

workingWith: aWebComponentInteraction
!WebInteractionInterpreter class categoriesFor: #forChangeInComponentValue!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forChangeInHiddenInputDependentComponentValue!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forClickOnComponent!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forClickOnHiddenInputDependentComponent!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forDelayedModelLoading!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forDoubleClickOnComponent!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forEvaluationOf:withAll:!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forInstantEvaluation!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #forReleaseOfKeyInComponent!instance creation!public! !
!WebInteractionInterpreter class categoriesFor: #workingWith:!instance creation / private!public! !
