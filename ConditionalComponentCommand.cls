"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ConditionalComponentCommand
	instanceVariableNames: 'command conditionBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ConditionalComponentCommand guid: (GUID fromString: '{3562ea57-7587-4321-a14e-28ac8ba40c10}')!
ConditionalComponentCommand comment: 'A command applying another command only if the condition is satisfied.'!
!ConditionalComponentCommand categoriesForClass!Willow-Frontend! !
!ConditionalComponentCommand methodsFor!

applyTo: aComponent on: aCanvas	(conditionBlock cull: aComponent)		ifTrue: [ command applyTo: aComponent on: aCanvas ]!

initializeApplying: aComponentCommand when: aConditionBlock	command := aComponentCommand.	conditionBlock := aConditionBlock! !
!ConditionalComponentCommand categoriesFor: #applyTo:on:!processing!public! !
!ConditionalComponentCommand categoriesFor: #initializeApplying:when:!initialization!public! !

!ConditionalComponentCommand class methodsFor!

applying: aComponentCommand when: aConditionBlock	^ self new initializeApplying: aComponentCommand when: aConditionBlock! !
!ConditionalComponentCommand class categoriesFor: #applying:when:!Instance Creation!public! !

