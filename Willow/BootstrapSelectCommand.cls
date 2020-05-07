"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #BootstrapSelectCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapSelectCommand guid: (GUID fromString: '{88974930-c2d0-4253-b123-24b9ce0b91bb}')!
BootstrapSelectCommand comment: 'I''m a component command enabling bootstrap-select'!
!BootstrapSelectCommand categoriesForClass!Willow-Bootstrap-Frontend! !
!BootstrapSelectCommand methodsFor!

applyTo: aComponent on: aCanvas	"We need to call the render method after the command application to get the right rendering"	[ :component | 	component addClass bootstrapCommon selectpicker		+ ( component addScript js: [ :canvas | canvas jQuery this bootstrapSelect render ] )	] asWebComponentCommand applyTo: aComponent on: aCanvas! !
!BootstrapSelectCommand categoriesFor: #applyTo:on:!processing!public! !

