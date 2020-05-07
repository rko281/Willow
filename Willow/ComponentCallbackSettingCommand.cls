"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #ComponentCallbackSettingCommand
	instanceVariableNames: 'callback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentCallbackSettingCommand guid: (GUID fromString: '{5992a4a2-466f-446c-a9ff-3fbc292c3e63}')!
ComponentCallbackSettingCommand comment: 'Command to set the callback of a component'!
!ComponentCallbackSettingCommand categoriesForClass!Willow-Core-Frontend! !
!ComponentCallbackSettingCommand methodsFor!

applyTo: aComponent on: aCanvas	aComponent callback: callback!

initializeSetting: aCallback	callback := aCallback! !
!ComponentCallbackSettingCommand categoriesFor: #applyTo:on:!processing!public! !
!ComponentCallbackSettingCommand categoriesFor: #initializeSetting:!initialization!public! !

!ComponentCallbackSettingCommand class methodsFor!

setting: aCallback	^self new initializeSetting: aCallback! !
!ComponentCallbackSettingCommand class categoriesFor: #setting:!instance creation!public! !

