"Filed out from Dolphin Smalltalk 7"!

WebInteractionInterpreterBehavior subclass: #CombinedWebInteractionInterpreter
	instanceVariableNames: 'interpreters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CombinedWebInteractionInterpreter guid: (GUID fromString: '{e436abba-a53b-4492-89ec-b3b642d7b779}')!
CombinedWebInteractionInterpreter comment: ''!
!CombinedWebInteractionInterpreter categoriesForClass!Willow-Core-WebInteraction! !
!CombinedWebInteractionInterpreter methodsFor!

addCssClass: aCssStyle toComponentsMatching: aComponentProvider	self interpretersDo: [:interpreter |		interpreter addCssClass: aCssStyle toComponentsMatching: aComponentProvider]!

changeCssClass: anExistingStyle to: aNewStyle	self interpretersDo: [:interpreter | interpreter changeCssClass: anExistingStyle to: aNewStyle]!

closeAllDialogs	self interpretersDo: [ :interpreter | interpreter closeAllDialogs ]!

closeLastDialog	self interpretersDo: [ :interpreter | interpreter closeLastDialog ]!

confirmAsking: aQuestion	self interpretersDo: [:interpreter | interpreter confirmAsking: aQuestion] !

determineBehaviorByEvaluating: aCallbackBlock	self interpretersDo: [:interpreter | interpreter determineBehaviorByEvaluating: aCallbackBlock]!

determineBehaviorByEvaluating: aCallbackBlock with: aParameter	self interpretersDo: [:interpreter |		interpreter determineBehaviorByEvaluating: aCallbackBlock with: aParameter]!

disable	self interpretersDo: [ :interpreter | interpreter disable ]!

disable: aComponent	self interpretersDo: [ :interpreter | interpreter disable: aComponent ]!

enable: aComponent	self interpretersDo: [ :interpreter | interpreter enable: aComponent ]!

executeOnClient: aServerIndependentAction	self interpretersDo: [:interpreter | interpreter executeOnClient: aServerIndependentAction]!

focus: anIdentifiedWebView	self interpretersDo: [ :interpreter | interpreter focus: anIdentifiedWebView ]!

focusUsing: aComponentProvider	self interpretersDo: [ :interpreter | interpreter focusUsing: aComponentProvider ]!

inform: aMessage	self interpretersDo: [:interpreter | interpreter inform: aMessage]!

informSelection	self interpretersDo: [:interpreter | interpreter informSelection]!

initializeCombining: aWebInteractionInterpreterCollection	interpreters := aWebInteractionInterpreterCollection!

interpretersDo: aBlock	interpreters do: aBlock!

onlyWhen: aStringCondition determineBehaviorByEvaluating: aCallbackBlock with: aParameter	self		interpretersDo: [ :interpreter | 			interpreter				onlyWhen: aStringCondition				determineBehaviorByEvaluating: aCallbackBlock				with: aParameter ]!

open: aView	self interpretersDo: [ :interpreter | interpreter open: aView ]!

remove: anIdentifiedView	self interpretersDo: [ :interpreter | interpreter remove: anIdentifiedView ]!

removeCssClass: aCssStyle fromComponentsMatching: aComponentProvider	self interpretersDo: [ :interpreter | interpreter removeCssClass: aCssStyle fromComponentsMatching: aComponentProvider ]!

render: anIdentifiedView	self interpretersDo: [ :interpreter | interpreter render: anIdentifiedView ]!

renderAll: anIdentifiedViewCollection	self interpretersDo: [ :interpreter | interpreter renderAll: anIdentifiedViewCollection ]!

scrollingIntoView: anIdentifier	self interpretersDo: [:interpreter | interpreter scrollingIntoView: anIdentifier]!

serializeChildForm	self interpretersDo: [:interpreter | interpreter serializeChildForm]!

serializeContainerForm	self interpretersDo: [:interpreter | interpreter serializeContainerForm]!

serializeForm: anIdentifiedForm	self interpretersDo: [ :interpreter | interpreter serializeForm: anIdentifiedForm ]!

serializeIt	self interpretersDo: [:interpreter | interpreter serializeIt]!

serializeWithHiddenInputs	self interpretersDo: [:interpreter | interpreter serializeWithHiddenInputs]!

setValueTo: aValueProvider thenTriggerChangeOf: anIdentifiedView	self		interpretersDo:			[ :interpreter | interpreter setValueTo: aValueProvider thenTriggerChangeOf: anIdentifiedView ]!

setValueTo: aValueProvider withoutTriggeringChangeOnComponentWithId: identifier	self		interpretersDo:			[ :interpreter | interpreter setValueTo: aValueProvider withoutTriggeringChangeOnComponentWithId: identifier ]!

showLoadingNotificationStyledAsAll: classes	self interpretersDo: [:interpreter | interpreter showLoadingNotificationStyledAsAll: classes]!

submitForm: anIdentifiedForm	self interpretersDo: [ :interpreter | interpreter submitForm: anIdentifiedForm ]!

submitFormStyledAs: aCssStyle	self interpretersDo: [:interpreter | interpreter submitFormStyledAs: aCssStyle]!

temporarilyDisableAndTransform: anIdentifiedView into: aView	self		interpretersDo: [ :interpreter | interpreter temporarilyDisableAndTransform: anIdentifiedView into: aView ]!

temporarilyDisableAndTransformInto: aView	self interpretersDo: [ :interpreter | interpreter temporarilyDisableAndTransformInto: aView ]!

toggleCssClass: aCssStyle onComponentsMatching: aComponentProvider	self interpretersDo: [ :interpreter | interpreter toggleCssClass: aCssStyle onComponentsMatching: aComponentProvider ]! !
!CombinedWebInteractionInterpreter categoriesFor: #addCssClass:toComponentsMatching:!Configuring / CSS!public! !
!CombinedWebInteractionInterpreter categoriesFor: #changeCssClass:to:!Configuring / CSS!public! !
!CombinedWebInteractionInterpreter categoriesFor: #closeAllDialogs!Configuring / Dialogs!public! !
!CombinedWebInteractionInterpreter categoriesFor: #closeLastDialog!Configuring / Dialogs!public! !
!CombinedWebInteractionInterpreter categoriesFor: #confirmAsking:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #determineBehaviorByEvaluating:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #determineBehaviorByEvaluating:with:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #disable!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #disable:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #enable:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #executeOnClient:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #focus:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #focusUsing:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #inform:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #informSelection!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #initializeCombining:!initialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #interpretersDo:!private! !
!CombinedWebInteractionInterpreter categoriesFor: #onlyWhen:determineBehaviorByEvaluating:with:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #open:!Configuring / Dialogs!public! !
!CombinedWebInteractionInterpreter categoriesFor: #remove:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #removeCssClass:fromComponentsMatching:!Configuring / CSS!public! !
!CombinedWebInteractionInterpreter categoriesFor: #render:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #renderAll:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #scrollingIntoView:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeChildForm!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeContainerForm!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeForm:!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeIt!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #serializeWithHiddenInputs!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #setValueTo:thenTriggerChangeOf:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #setValueTo:withoutTriggeringChangeOnComponentWithId:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #showLoadingNotificationStyledAsAll:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #submitForm:!Configuring / Serialization!public! !
!CombinedWebInteractionInterpreter categoriesFor: #submitFormStyledAs:!Configuring!public! !
!CombinedWebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransform:into:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransformInto:!Configuring / DOM!public! !
!CombinedWebInteractionInterpreter categoriesFor: #toggleCssClass:onComponentsMatching:!Configuring / CSS!public! !

!CombinedWebInteractionInterpreter class methodsFor!

combining: aWebInteractionInterpreterCollection	^self new initializeCombining: aWebInteractionInterpreterCollection!

combiningInterpretersOf: aWebViewCollection	^self		combining: (aWebViewCollection collect: [:aWebView | aWebView onTrigger])! !
!CombinedWebInteractionInterpreter class categoriesFor: #combining:!instance creation!public! !
!CombinedWebInteractionInterpreter class categoriesFor: #combiningInterpretersOf:!instance creation!public! !

