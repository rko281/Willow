"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #DelayedCommand
	instanceVariableNames: 'behaviorCallback interpreter optionalClientSideParameter serverSideParameterBinding optionalClientCondition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DelayedCommand guid: (GUID fromString: '{af4be449-ebcd-4ebc-9f68-a5ec896d429e}')!
DelayedCommand comment: 'I''m a WebInteractionCommand with a response that can be configured during the execution on the server.'!
!DelayedCommand categoriesForClass!Willow-Core-WebInteraction! !
!DelayedCommand methodsFor!

clientIndependentActions	^ Array		with: [ self resetInterpreter.			optionalClientSideParameter				withContentDo: [ behaviorCallback value: self value: serverSideParameterBinding content ]				ifUnused: [ behaviorCallback value: self ] ]!

considerAddingConditionTo: anAsynchronousCall	optionalClientCondition		withContentDo: [ :clientCondition | anAsynchronousCall condition: (JSStream on: clientCondition) ]!

initializeWithBehaviorDeterminedBy: aBlock conditionedBy: anOptionalClientCondition requiring: anOptionalParameter	behaviorCallback := aBlock.	optionalClientCondition := anOptionalClientCondition.	optionalClientSideParameter := anOptionalParameter.	serverSideParameterBinding := Binding		undefinedExplainedBy: 'Missing Server Side Parameter'.	self resetInterpreter!

modelLoadingActions	^ Array with: [ :aScript :aCanvas | interpreter applyTo: aScript on: aCanvas ]!

obtain: clientSideParameter from: anAsynchronousCall	self considerAddingConditionTo: anAsynchronousCall.	anAsynchronousCall		bePost;		callback: [ :serverSideParameter | serverSideParameterBinding := Binding to: serverSideParameter ]			json: clientSideParameter!

onReturn	"This message is not strictly needed. It is implemented merely to help with legibility of the code when being configured."	^ interpreter!

priorityActions	"If there's some parameter, we got it from the json and keep it to be used during callback execution"	^ optionalClientSideParameter		withContentDo: [ :clientSideParameter | 			Array				with:					[ :anAsynchronousCall :aCanvas | self obtain: clientSideParameter from: anAsynchronousCall ] ]		ifUnused: [ #() ]!

requiresSerialization	^ true!

resetInterpreter	interpreter := WebInteractionInterpreter forDelayedModelLoading!

serverIndependentActions	^ #()! !
!DelayedCommand categoriesFor: #clientIndependentActions!accessing!public! !
!DelayedCommand categoriesFor: #considerAddingConditionTo:!private! !
!DelayedCommand categoriesFor: #initializeWithBehaviorDeterminedBy:conditionedBy:requiring:!initialization!public! !
!DelayedCommand categoriesFor: #modelLoadingActions!accessing!public! !
!DelayedCommand categoriesFor: #obtain:from:!private! !
!DelayedCommand categoriesFor: #onReturn!configuring!public! !
!DelayedCommand categoriesFor: #priorityActions!accessing!public! !
!DelayedCommand categoriesFor: #requiresSerialization!public!testing! !
!DelayedCommand categoriesFor: #resetInterpreter!initialization!public! !
!DelayedCommand categoriesFor: #serverIndependentActions!accessing!public! !

!DelayedCommand class methodsFor!

withBehaviorDeterminedBy: aBlock	^ self		withBehaviorDeterminedBy: aBlock		conditionedBy: Optional unused		requiring: Optional unused!

withBehaviorDeterminedBy: aBlock conditionedBy: anOptionalClientCondition requiring: anOptionalParameter	^ self new		initializeWithBehaviorDeterminedBy: aBlock		conditionedBy: anOptionalClientCondition		requiring: anOptionalParameter!

withBehaviorDeterminedBy: aBlock executedOnlyWhen: aStringCondition with: aParameter	^ self		withBehaviorDeterminedBy: aBlock		conditionedBy: (Optional containing: (aStringCondition expandMacrosWith: aParameter asJavascript))		requiring: (Optional containing: aParameter)!

withBehaviorDeterminedBy: aBlock with: aParameter	^ self		withBehaviorDeterminedBy: aBlock		conditionedBy: Optional unused		requiring: (Optional containing: aParameter)! !
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:!instance creation!public! !
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:conditionedBy:requiring:!private! !
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:executedOnlyWhen:with:!instance creation!public! !
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:with:!instance creation!public! !

