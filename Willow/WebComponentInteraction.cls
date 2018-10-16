﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WebComponentInteraction
	instanceVariableNames: 'triggerPolicy commands modelLoadingActions clientIndependentActions priorityActions serverIndependentActions serializationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentInteraction guid: (GUID fromString: '{4c7f374a-f09f-44de-a0f8-6700a2bd558b}')!
WebComponentInteraction comment: ''!
!WebComponentInteraction categoriesForClass!Willow-WebInteraction! !
!WebComponentInteraction methodsFor!

applyTo: aComponent on: aCanvas

asynchronousCallToAffect: aCanvas

commandToExecuteOn: aCanvas

complete: anAsynchronousCall withResponseOn: aCanvas

initializeActions

initializeTriggeredAccordingTo: aTriggerPolicy serializingWith: aSerializationCommand

onTriggerExecute: aCommand

prepareActions

registerActionsOf: aCommand

shouldApplyActions

shouldApplyAsynchronousCall
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

neverTriggered

triggeredAccordingTo: aTriggerPolicy serializingWith: aSerializationCommand

triggeredOnChange

triggeredOnChangeSerializingHiddenInputs

triggeredOnClick

triggeredOnClickSerializingHiddenInputs

triggeredOnDocumentLoad

triggeredOnDoubleClick

triggeredOnEvaluationOf: aSelector withAll: aParameterArray

triggeredOnKeyUp
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
