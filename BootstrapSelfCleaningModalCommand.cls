"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapSelfCleaningModalCommand
	instanceVariableNames: 'scriptCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelfCleaningModalCommand guid: (GUID fromString: '{185f3a34-9cb6-4b93-803d-b643d8b4ca2e}')!
BootstrapSelfCleaningModalCommand comment: 'I''m a bootstrap command configuring a modal with an static backdrop and attaching a script to self clean the dialogs section on close. Useful for dynamically created modals.'!
!BootstrapSelfCleaningModalCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapSelfCleaningModalCommand methodsFor!

applyTo: aDialog on: aCanvas	^ scriptCommand applyTo: aDialog on: aCanvas!

initialize	super initialize.	scriptCommand := ComponentScriptCommand		toExecute: [ :canvas | 			canvas jQuery this bootstrapModal				backdrop: #static;				onHidden:					(canvas javascript call: (canvas jQuery willow bootstrap access: Constants >> #bootstrap >> #cleanModalFunctionName) asJavascript with: canvas jQuery this) asFunction ]! !
!BootstrapSelfCleaningModalCommand categoriesFor: #applyTo:on:!processing!public! !
!BootstrapSelfCleaningModalCommand categoriesFor: #initialize!initialization!public! !

