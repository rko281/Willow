﻿"Filed out from Dolphin Smalltalk 7"!

WebComponentCommand subclass: #InputModeCommand
	instanceVariableNames: 'type'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
InputModeCommand guid: (GUID fromString: '{cab0caf8-c6a4-435d-8254-992339a76586}')!
InputModeCommand comment: 'I''m a command configuring an input field to be of an specific type'!
!InputModeCommand categoriesForClass!Willow-Frontend! !
!InputModeCommand methodsFor!

applyTo: aComponent on: aCanvas

initializeSettingTypeTo: aType
!InputModeCommand categoriesFor: #applyTo:on:!processing!public! !
!InputModeCommand categoriesFor: #initializeSettingTypeTo:!initialization!public! !

!InputModeCommand class methodsFor!

asDate

asEmail

asNumber

asPassword

asText

settingTypeTo: aType
!InputModeCommand class categoriesFor: #asDate!Instance Creation!public! !
!InputModeCommand class categoriesFor: #asEmail!Instance Creation!public! !
!InputModeCommand class categoriesFor: #asNumber!Instance Creation!public! !
!InputModeCommand class categoriesFor: #asPassword!Instance Creation!public! !
!InputModeCommand class categoriesFor: #asText!Instance Creation!public! !
!InputModeCommand class categoriesFor: #settingTypeTo:!private/Instance Creation!public! !
