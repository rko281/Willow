"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapDatepickerCommand
	instanceVariableNames: 'additionalCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDatepickerCommand guid: (GUID fromString: '{ba904b5c-2390-4ec3-8d95-41b5f84c0276}')!
BootstrapDatepickerCommand comment: 'I''m a component command enabling bootstrap-datepicker'!
!BootstrapDatepickerCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapDatepickerCommand methodsFor!

applyTo: aComponent on: aCanvas	[ :component :constants | (component setData: 'provide' to: constants >> #bootstrap >> #datepicker) + additionalCommand ]		asWebComponentCommand applyTo: aComponent on: aCanvas!

initializeApplying: anAdditionalCommand	additionalCommand := anAdditionalCommand ! !
!BootstrapDatepickerCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapDatepickerCommand categoriesFor: #initializeApplying:!initialize!public! !

!BootstrapDatepickerCommand class methodsFor!

applying: anAdditionalCommand	^ super new initializeApplying: anAdditionalCommand asWebComponentCommand !

configuredBy: aConfigurationBlock	^ self		applying: [ :field | 			field addScript				js: [ :canvas | 					| datepicker |					datepicker := canvas jQuery new bootstrapDatepicker.					aConfigurationBlock value: datepicker ] ]!

new	^ self applying: [  ]! !
!BootstrapDatepickerCommand class categoriesFor: #applying:!private / Instance Creation!public! !
!BootstrapDatepickerCommand class categoriesFor: #configuredBy:!Instance Creation!public! !
!BootstrapDatepickerCommand class categoriesFor: #new!Instance Creation!public! !

