"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebComponentInteraction
	instanceVariableNames: 'triggerPolicy commands modelLoadingActions clientIndependentActions priorityActions serverIndependentActions serializationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentInteraction guid: (GUID fromString: '{4c7f374a-f09f-44de-a0f8-6700a2bd558b}')!
WebComponentInteraction comment: ''!
!WebComponentInteraction categoriesForClass!Willow-WebInteraction! !
!WebComponentInteraction methodsFor!

applyTo: aComponent on: aCanvas	self prepareActions.	self shouldApplyActions		ifTrue: 			[triggerPolicy				apply: (self commandToExecuteOn: aCanvas)				to: aComponent				on: aCanvas]!

asynchronousCallToAffect: aCanvas	| serverCall |	serverCall := aCanvas jQuery willow serverCall.	priorityActions do: [ :action | action value: serverCall value: aCanvas ].	self complete: serverCall withResponseOn: aCanvas.	^ serverCall!

commandToExecuteOn: aCanvas	^ serverIndependentActions isEmpty		ifTrue: [ self asynchronousCallToAffect: aCanvas ]		ifFalse: [ | script |			script := aCanvas javascript.			serverIndependentActions do: [ :action | action value: script value: aCanvas ].			self shouldApplyAsynchronousCall				ifTrue: [ script << (self asynchronousCallToAffect: aCanvas) ].			script ]!

complete: anAsynchronousCall withResponseOn: aCanvas	anAsynchronousCall		script: [ :subScript | 			clientIndependentActions do: [ :action | action value ].			modelLoadingActions do: [ :action | action value: subScript value: aCanvas ] ]!

initializeActions	priorityActions := OrderedCollection new.	clientIndependentActions := OrderedCollection new.	serverIndependentActions := OrderedCollection new.	modelLoadingActions := OrderedCollection new!

initializeTriggeredAccordingTo: aTriggerPolicy serializingWith: aSerializationCommand	triggerPolicy := aTriggerPolicy.	commands := OrderedCollection new.	serializationCommand := aSerializationCommand!

onTriggerExecute: aCommand	commands add: aCommand!

prepareActions	| serializationRequired |	serializationRequired := false.	self initializeActions.	commands		do: [ :aCommand | 			self registerActionsOf: aCommand.			serializationRequired := serializationRequired or: [ aCommand requiresSerialization ] ].	serializationRequired		ifTrue: [ self registerActionsOf: serializationCommand ]!

registerActionsOf: aCommand	modelLoadingActions addAll: aCommand modelLoadingActions.	clientIndependentActions addAll: aCommand clientIndependentActions.	priorityActions addAll: aCommand priorityActions.	serverIndependentActions addAll: aCommand serverIndependentActions.!

shouldApplyActions	^serverIndependentActions notEmpty or: [self shouldApplyAsynchronousCall]!

shouldApplyAsynchronousCall	^clientIndependentActions notEmpty		or: [priorityActions notEmpty or: [modelLoadingActions notEmpty]]! !
!WebComponentInteraction categoriesFor: #applyTo:on:!evaluating!public! !
!WebComponentInteraction categoriesFor: #asynchronousCallToAffect:!private / accessing!public! !
!WebComponentInteraction categoriesFor: #commandToExecuteOn:!private / accessing!public! !
!WebComponentInteraction categoriesFor: #complete:withResponseOn:!private / accessing!public! !
!WebComponentInteraction categoriesFor: #initializeActions!initialization!public! !
!WebComponentInteraction categoriesFor: #initializeTriggeredAccordingTo:serializingWith:!initialization!public! !
!WebComponentInteraction categoriesFor: #onTriggerExecute:!configuring!public! !
!WebComponentInteraction categoriesFor: #prepareActions!initialization!public! !
!WebComponentInteraction categoriesFor: #registerActionsOf:!private / processing!public! !
!WebComponentInteraction categoriesFor: #shouldApplyActions!private / testing!public! !
!WebComponentInteraction categoriesFor: #shouldApplyAsynchronousCall!private / testing!public! !

!WebComponentInteraction class methodsFor!

neverTriggered	^self		triggeredAccordingTo: NullTriggeringPolicy new		serializingWith: NullWebInteractionCommand new!

triggeredAccordingTo: aTriggerPolicy serializingWith: aSerializationCommand	^ self new		initializeTriggeredAccordingTo: aTriggerPolicy		serializingWith: aSerializationCommand!

triggeredOnChange	^ self		triggeredAccordingTo: InteractionScriptTrigger triggeringOnChange		serializingWith: SerializationCommand forCurrentObject!

triggeredOnChangeSerializingHiddenInputs	^ self		triggeredAccordingTo: InteractionScriptTrigger triggeringOnChange		serializingWith: SerializationCommand forCurrentObjectWithHiddenInputs!

triggeredOnClick	^ self		triggeredAccordingTo: InteractionScriptTrigger triggeringOnClick		serializingWith: NullWebInteractionCommand new!

triggeredOnClickSerializingHiddenInputs	^ self		triggeredAccordingTo: InteractionScriptTrigger triggeringOnClick		serializingWith: SerializationCommand forCurrentObjectWithHiddenInputs!

triggeredOnDocumentLoad	^self		triggeredAccordingTo: DocumentLoadTrigger new		serializingWith: NullWebInteractionCommand new!

triggeredOnDoubleClick	^ self		triggeredAccordingTo: InteractionScriptTrigger triggeringOnDoubleClick		serializingWith: NullWebInteractionCommand new!

triggeredOnEvaluationOf: aSelector withAll: aParameterArray	^ self		triggeredAccordingTo: (FunctionEvaluationTrigger sending: aSelector parameterizedBy: aParameterArray)		serializingWith: SerializationCommand forCurrentObject!

triggeredOnKeyUp	^ self		triggeredAccordingTo: InteractionScriptTrigger triggeringOnKeyUp		serializingWith: SerializationCommand forCurrentObject! !
!WebComponentInteraction class categoriesFor: #neverTriggered!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredAccordingTo:serializingWith:!private! !
!WebComponentInteraction class categoriesFor: #triggeredOnChange!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredOnChangeSerializingHiddenInputs!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredOnClick!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredOnClickSerializingHiddenInputs!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredOnDocumentLoad!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredOnDoubleClick!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredOnEvaluationOf:withAll:!instance creation!public! !
!WebComponentInteraction class categoriesFor: #triggeredOnKeyUp!instance creation!public! !

