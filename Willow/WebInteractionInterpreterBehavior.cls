﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WebInteractionInterpreterBehavior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebInteractionInterpreterBehavior guid: (GUID fromString: '{5010199d-1ed8-4c2d-a563-a7b58eea5a98}')!
WebInteractionInterpreterBehavior comment: ''!
!WebInteractionInterpreterBehavior categoriesForClass!Willow-WebInteraction! !
!WebInteractionInterpreterBehavior methodsFor!

addCssClass: aCssStyle

addCssClass: aCssStyle toComponentsMatching: aComponentProvider

changeCssClass: anExistingStyle to: aNewStyle

closeAllDialogs

closeLastDialog

confirmAsking: aQuestion

determineBehaviorByEvaluating: aCallbackBlock

determineBehaviorByEvaluating: aCallbackBlock with: aParameter

disable

enable: aComponent

evaluate: aCallbackBlock

evaluate: aCallbackBlock with: aParameter

executeOnClient: aServerIndependentAction

focus: anIdentifiedWebView

focusUsing: aComponentProvider

inform: aMessage

informSelection

onlyWhen: aStringCondition determineBehaviorByEvaluating: aCallbackBlock with: aParameter

open: aView

remove: anIdentifiedView

removeCssClass: aCssStyle fromComponentsMatching: aComponentProvider

removeCssClass: aCssStyle fromComponentsWithClass: aComponentByStyleName

render: anIdentifiedView

renderAll: anIdentifiedViewCollection

scrollingIntoView: anIdentifier

serializeChildForm

serializeContainerForm

serializeForm: anIdentifiedForm

serializeIt

serializeWithHiddenInputs

setValueTo: aValueProvider thenTriggerChangeOf: anIdentifiedView

setValueTo: aValueProviders withoutTriggeringChangeOnComponentWithId: identifier 

show: aRenderable whileCallingServerToRender: anIdentifiedWebView

showLoadingNotificationStyledAsAll: classes

submitForm: anIdentifiedForm

submitFormStyledAs: aCssStyle

temporarilyDisableAndTransform: anIdentifiedView into: aView

temporarilyDisableAndTransformInto: aView

toggleCssClass: aCssStyle

toggleCssClass: aCssStyle on: anIdentifiedWebView

toggleCssClass: aCssStyle onComponentsMatching: aComponentProvider

transform: anIdentifiedWebView into: aRenderable
!WebInteractionInterpreterBehavior categoriesFor: #addCssClass:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #addCssClass:toComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #changeCssClass:to:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #closeAllDialogs!Configuring / Dialogs!public! !
!WebInteractionInterpreterBehavior categoriesFor: #closeLastDialog!Configuring / Dialogs!public! !
!WebInteractionInterpreterBehavior categoriesFor: #confirmAsking:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #determineBehaviorByEvaluating:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #determineBehaviorByEvaluating:with:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #disable!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #enable:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #evaluate:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #evaluate:with:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #executeOnClient:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #focus:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #focusUsing:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #inform:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #informSelection!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #onlyWhen:determineBehaviorByEvaluating:with:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #open:!Configuring / Dialogs!public! !
!WebInteractionInterpreterBehavior categoriesFor: #remove:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #removeCssClass:fromComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #removeCssClass:fromComponentsWithClass:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #render:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #renderAll:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #scrollingIntoView:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeChildForm!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeContainerForm!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeForm:!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeIt!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #serializeWithHiddenInputs!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #setValueTo:thenTriggerChangeOf:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #setValueTo:withoutTriggeringChangeOnComponentWithId:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #show:whileCallingServerToRender:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #showLoadingNotificationStyledAsAll:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #submitForm:!Configuring / Serialization!public! !
!WebInteractionInterpreterBehavior categoriesFor: #submitFormStyledAs:!Configuring!public! !
!WebInteractionInterpreterBehavior categoriesFor: #temporarilyDisableAndTransform:into:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #temporarilyDisableAndTransformInto:!Configuring / DOM!public! !
!WebInteractionInterpreterBehavior categoriesFor: #toggleCssClass:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #toggleCssClass:on:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #toggleCssClass:onComponentsMatching:!Configuring / CSS!public! !
!WebInteractionInterpreterBehavior categoriesFor: #transform:into:!Configuring / DOM!public! !
