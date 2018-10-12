"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapAlertCommand
	instanceVariableNames: 'classificationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapAlertCommand guid: (GUID fromString: '{ae1716b2-cdaa-431c-86fb-b4cf91b46aed}')!
BootstrapAlertCommand comment: 'Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.'!
!BootstrapAlertCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapAlertCommand methodsFor!

applyTo: aComponent on: aCanvas	classificationCommand applyTo: aComponent on: aCanvas!

initializeApplying: aContextualClassificationCommand	classificationCommand := [ :container :constants | container addClass bootstrap alert + aContextualClassificationCommand + (container setARIARoleTo: #alert) ] asWebComponentCommand! !
!BootstrapAlertCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapAlertCommand categoriesFor: #initializeApplying:!initialization!public! !

!BootstrapAlertCommand class methodsFor!

applying: aCommand	^ self new initializeApplying: aCommand asWebComponentCommand!

danger	^ self applying: [ :container | container addClass bootstrap alertDanger ]!

informational	^ self applying: [ :container | container addClass bootstrap alertInfo ]!

success	^ self applying: [ :container | container addClass bootstrap alertSuccess ]!

warning	^ self applying: [ :container | container addClass bootstrap alertWarning ]! !
!BootstrapAlertCommand class categoriesFor: #applying:!private / Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #danger!Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #informational!Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #success!Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #warning!Instance Creation!public! !

