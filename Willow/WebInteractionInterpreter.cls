"Filed out from Dolphin Smalltalk 7"!

WebInteractionInterpreterBehavior subclass: #WebInteractionInterpreter
	instanceVariableNames: 'interaction'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebInteractionInterpreter guid: (GUID fromString: '{9d660643-9ba2-44c5-9687-f228107495a8}')!
WebInteractionInterpreter comment: ''!
!WebInteractionInterpreter categoriesForClass!Willow-WebInteraction! !
!WebInteractionInterpreter methodsFor!

addCssClass: aCssStyle toComponentsMatching: aComponentProvider	interaction		onTriggerExecute:			(ComponentStyleClassChangingCommand				on: aComponentProvider				altering: aCssStyle				sending: #addClass:)!

applyTo: aComponent on: aCanvas	interaction applyTo: aComponent on: aCanvas!

changeCssClass: anExistingStyle to: aNewStyle	interaction		onTriggerExecute:			(ComponentStyleClassChangingCommand				on: [ :canvas | canvas jQuery class: anExistingStyle ]				altering: anExistingStyle				sending: #removeClass:				using: [ :component | component addClass: aNewStyle ])!

closeAllDialogs	interaction onTriggerExecute: DialogClosingCommand forAllDialogs!

closeLastDialog	interaction onTriggerExecute: DialogClosingCommand onlyForLastDialog!

confirmAsking: aQuestion	interaction		onTriggerExecute: (ConfirmationCommand asking: aQuestion)!

determineBehaviorByEvaluating: aCallbackBlock	interaction onTriggerExecute: (DelayedCommand withBehaviorDeterminedBy: aCallbackBlock)!

determineBehaviorByEvaluating: aCallbackBlock with: aParameter	interaction onTriggerExecute: (DelayedCommand withBehaviorDeterminedBy: aCallbackBlock with: aParameter)!

disable	interaction onTriggerExecute: ComponentEnableStatusChangingCommand disablingCurrentComponent!

enable: aComponent	interaction onTriggerExecute: (ComponentEnableStatusChangingCommand enabling: aComponent)!

executeOnClient: aServerIndependentAction	interaction		onTriggerExecute: (PluggableExecutionOnClientCommand executingOnly: aServerIndependentAction)!

focus: anIdentifiedWebView	interaction		onTriggerExecute: (ComponentFocusingCommand for: anIdentifiedWebView)!

focusUsing: aComponentProvider	interaction		onTriggerExecute: (ComponentFocusingCommand findingComponentUsing: aComponentProvider)!

inform: aMessage	interaction onTriggerExecute: (AlertingCommand stating: aMessage)!

informSelection	interaction onTriggerExecute: AlertingCommand informingSelection!

initializeWorkingWith: aWebComponentInteraction	interaction := aWebComponentInteraction!

onlyWhen: aStringCondition determineBehaviorByEvaluating: aCallbackBlock with: aParameter	interaction		onTriggerExecute:			(DelayedCommand				withBehaviorDeterminedBy: aCallbackBlock				executedOnlyWhen: aStringCondition				with: aParameter)!

open: aView	interaction onTriggerExecute: (DialogOpeningCommand alwaysOpening: aView)!

remove: anIdentifiedView	interaction onTriggerExecute: (ComponentRemovingCommand for: anIdentifiedView)!

removeCssClass: aCssStyle fromComponentsMatching: aComponentProvider	interaction		onTriggerExecute:			(ComponentStyleClassChangingCommand				on: aComponentProvider				altering: aCssStyle				sending: #removeClass:)!

render: anIdentifiedView	interaction onTriggerExecute: (RenderingCommand for: anIdentifiedView)!

renderAll: anIdentifiedViewCollection	interaction onTriggerExecute: (RenderingCommand forAll: anIdentifiedViewCollection)!

scrollingIntoView: anIdentifier	interaction onTriggerExecute: (ScrollIntoViewCommand withComponentIdentifierProvidedBy: [ anIdentifier ])!

serializeChildForm	interaction onTriggerExecute: SerializationCommand forChildForm!

serializeContainerForm	interaction onTriggerExecute: SerializationCommand forParentForm!

serializeForm: anIdentifiedForm	interaction onTriggerExecute: (SerializationCommand forForm: anIdentifiedForm)!

serializeIt	interaction onTriggerExecute: SerializationCommand forCurrentObject!

serializeWithHiddenInputs	interaction onTriggerExecute: SerializationCommand forCurrentObjectWithHiddenInputs!

setValueTo: aValueProvider thenTriggerChangeOf: anIdentifiedView	interaction		onTriggerExecute:			(ComponentValueSettingCommand				triggeringChangesObtainingIdentifierFrom: [ anIdentifiedView identifier ]				valueFrom: aValueProvider)!

setValueTo: aValueProvider withoutTriggeringChangeOnComponentWithId: identifier	interaction		onTriggerExecute:			(ComponentValueSettingCommand				obtainingIdentifierFrom: [ identifier ]				valueFrom: aValueProvider)!

showLoadingNotificationDisplaying: aWebView applying: aComponentCommand	interaction onTriggerExecute:		(LoadingNotificationCommand displaying: aWebView applying: aComponentCommand)!

showLoadingNotificationStyledAsAll: classes	interaction		onTriggerExecute: (LoadingNotificationCommand onPageTopWithClasses: classes)!

submitForm: anIdentifiedForm	interaction		onTriggerExecute:			(FormSubmitCommand				findingComponentUsing: [ :aCanvas | 					anIdentifiedForm identifyIn: aCanvas.					aCanvas jQuery id: anIdentifiedForm identifier ])!

submitFormStyledAs: aCssStyle	interaction onTriggerExecute: (FormSubmitCommand forFormStyledAs: aCssStyle)!

temporarilyDisableAndTransform: anIdentifiedView into: aView	interaction onTriggerExecute: (TemporarilyDisablingCommand transforming: anIdentifiedView into: aView)!

temporarilyDisableAndTransformInto: aView	interaction onTriggerExecute: (TemporarilyDisablingCommand transformingCurrentViewInto: aView)!

toggleCssClass: aCssStyle onComponentsMatching: aComponentProvider	interaction		onTriggerExecute:			(ComponentStyleClassChangingCommand				on: aComponentProvider				altering: aCssStyle				sending: #toggleClass:)! !
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
!WebInteractionInterpreter categoriesFor: #showLoadingNotificationDisplaying:applying:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #showLoadingNotificationStyledAsAll:!Configuring!public! !
!WebInteractionInterpreter categoriesFor: #submitForm:!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #submitFormStyledAs:!Configuring / Serialization!public! !
!WebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransform:into:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #temporarilyDisableAndTransformInto:!Configuring / DOM!public! !
!WebInteractionInterpreter categoriesFor: #toggleCssClass:onComponentsMatching:!Configuring / CSS!public! !

!WebInteractionInterpreter class methodsFor!

forChangeInComponentValue	^self workingWith: WebComponentInteraction triggeredOnChange!

forChangeInHiddenInputDependentComponentValue	^self workingWith: WebComponentInteraction triggeredOnChangeSerializingHiddenInputs!

forClickOnComponent	^self workingWith: WebComponentInteraction triggeredOnClick!

forClickOnHiddenInputDependentComponent	^self workingWith: WebComponentInteraction triggeredOnClickSerializingHiddenInputs!

forDelayedModelLoading	^ self workingWith: DelayedModelLoader new!

forDoubleClickOnComponent	^self workingWith: WebComponentInteraction triggeredOnDoubleClick!

forEvaluationOf: aSelector withAll: aParameterArray	^self workingWith:		(WebComponentInteraction triggeredOnEvaluationOf: aSelector withAll: aParameterArray)!

forInstantEvaluation	^self workingWith: WebComponentInteraction triggeredOnDocumentLoad!

forReleaseOfKeyInComponent	^self workingWith: WebComponentInteraction triggeredOnKeyUp!

workingWith: aWebComponentInteraction	^self new initializeWorkingWith: aWebComponentInteraction! !
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

