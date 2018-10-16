﻿"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #DelayedCommand
	instanceVariableNames: 'behaviorCallback interpreter optionalClientSideParameter serverSideParameterBinding optionalClientCondition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DelayedCommand guid: (GUID fromString: '{af4be449-ebcd-4ebc-9f68-a5ec896d429e}')!
DelayedCommand comment: 'I''m a WebInteractionCommand with a response that can be configured during the execution on the server.'!
!DelayedCommand categoriesForClass!Willow-WebInteraction! !
!DelayedCommand methodsFor!

clientIndependentActions

considerAddingConditionTo: anAsynchronousCall

initializeWithBehaviorDeterminedBy: aBlock conditionedBy: anOptionalClientCondition requiring: anOptionalParameter

modelLoadingActions

obtain: clientSideParameter from: anAsynchronousCall

onReturn

priorityActions

requiresSerialization

resetInterpreter

serverIndependentActions
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

withBehaviorDeterminedBy: aBlock

withBehaviorDeterminedBy: aBlock conditionedBy: anOptionalClientCondition requiring: anOptionalParameter

withBehaviorDeterminedBy: aBlock executedOnlyWhen: aStringCondition with: aParameter

withBehaviorDeterminedBy: aBlock with: aParameter
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:!instance creation!public! !
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:conditionedBy:requiring:!private! !
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:executedOnlyWhen:with:!instance creation!public! !
!DelayedCommand class categoriesFor: #withBehaviorDeterminedBy:with:!instance creation!public! !
