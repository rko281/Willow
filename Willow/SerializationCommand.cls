"Filed out from Dolphin Smalltalk 7"!

WebInteractionCommand subclass: #SerializationCommand
	instanceVariableNames: 'priorityActions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SerializationCommand guid: (GUID fromString: '{85e7b6af-0de6-4974-bf86-aa80fc96fc4a}')!
SerializationCommand comment: 'I''m a WebInteractionCommand that specifies how to serialize the component state.'!
!SerializationCommand categoriesForClass!Willow-Core-WebInteraction! !
!SerializationCommand methodsFor!

clientIndependentActions	^#()!

initializeExecuting: aPriorityAction	priorityActions := Array with: aPriorityAction!

modelLoadingActions	^#()!

priorityActions	^priorityActions!

requiresSerialization	^false!

serverIndependentActions	^#()! !
!SerializationCommand categoriesFor: #clientIndependentActions!accessing!public! !
!SerializationCommand categoriesFor: #initializeExecuting:!initialize/release!public! !
!SerializationCommand categoriesFor: #modelLoadingActions!accessing!public! !
!SerializationCommand categoriesFor: #priorityActions!accessing!public! !
!SerializationCommand categoriesFor: #requiresSerialization!public!testing! !
!SerializationCommand categoriesFor: #serverIndependentActions!accessing!public! !

!SerializationCommand class methodsFor!

executing: aPriorityAction	^self new initializeExecuting: aPriorityAction!

forChildForm	^ self		executing: [ :anAsynchronousCall :aCanvas | 			anAsynchronousCall				bePost;				serialize: (aCanvas jQuery this children: 'form') ]!

forCurrentObject	^ self		executing: [ :anAsynchronousCall :aCanvas | 			anAsynchronousCall				bePost;				serializeThis ]!

forCurrentObjectWithHiddenInputs	^ self		executing: [ :anAsynchronousCall :aCanvas | 			anAsynchronousCall				bePost;				serializeThisWithHidden ]!

forForm: anIdentifiedForm	^ self		executing: [ :anAsynchronousCall :aCanvas | 			anIdentifiedForm identifyIn: aCanvas.			anAsynchronousCall				bePost;				serialize: (aCanvas jQuery id: anIdentifiedForm identifier) ]!

forParentForm	^ self		executing: [ :anAsynchronousCall :aCanvas | 			anAsynchronousCall				bePost;				serializeForm ]! !
!SerializationCommand class categoriesFor: #executing:!instance creation / private!public! !
!SerializationCommand class categoriesFor: #forChildForm!instance creation!public! !
!SerializationCommand class categoriesFor: #forCurrentObject!instance creation!public! !
!SerializationCommand class categoriesFor: #forCurrentObjectWithHiddenInputs!instance creation!public! !
!SerializationCommand class categoriesFor: #forForm:!instance creation!public! !
!SerializationCommand class categoriesFor: #forParentForm!instance creation!public! !

