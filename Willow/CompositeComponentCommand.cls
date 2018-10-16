﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #CompositeComponentCommand
	instanceVariableNames: 'commands'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeComponentCommand guid: (GUID fromString: '{9cf7f0fa-cb3c-4b3a-a175-c45163b7934c}')!
CompositeComponentCommand comment: 'A command collecting several sub commands to a component.'!
!CompositeComponentCommand categoriesForClass!Willow-Frontend! !
!CompositeComponentCommand methodsFor!

+ aComponentCommand

applyTo: aComponent on: aCanvas

initializeApplyingAll: aCommandCollection
!CompositeComponentCommand categoriesFor: #+!combining!public! !
!CompositeComponentCommand categoriesFor: #applyTo:on:!processing!public! !
!CompositeComponentCommand categoriesFor: #initializeApplyingAll:!initialize/release!public! !

!CompositeComponentCommand class methodsFor!

applyingAll: aCommandCollection

empty
!CompositeComponentCommand class categoriesFor: #applyingAll:!instance creation!public! !
!CompositeComponentCommand class categoriesFor: #empty!instance creation!public! !
