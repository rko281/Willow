﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapAlertCommand
	instanceVariableNames: 'classificationCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapAlertCommand guid: (GUID fromString: '{ae1716b2-cdaa-431c-86fb-b4cf91b46aed}')!
BootstrapAlertCommand comment: 'Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.'!
!BootstrapAlertCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapAlertCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeApplying: aContextualClassificationCommand
!BootstrapAlertCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapAlertCommand categoriesFor: #initializeApplying:!initialization!public! !

!BootstrapAlertCommand class methodsFor!

applying: aCommand

danger

informational

success

warning
!BootstrapAlertCommand class categoriesFor: #applying:!private / Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #danger!Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #informational!Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #success!Instance Creation!public! !
!BootstrapAlertCommand class categoriesFor: #warning!Instance Creation!public! !
