"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #BootstrapDelayConfiguration
	instanceVariableNames: 'millisecondCountToShow millisecondCountToHide'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapDelayConfiguration guid: (GUID fromString: '{38bc76c9-9837-4a4f-9563-7f774c916909}')!
BootstrapDelayConfiguration comment: 'I''m a Delay configuration'!
!BootstrapDelayConfiguration categoriesForClass!Willow-Bootstrap-Plugins! !
!BootstrapDelayConfiguration methodsFor!

initialize	super initialize.	millisecondCountToHide := 0.	millisecondCountToShow := 0!

javascriptContentOn: aStream	aStream nextPut: ${.	JSStream encodeKey: 'show' value: millisecondCountToShow on: aStream.	aStream nextPut: $,.	JSStream encodeKey: 'hide' value: millisecondCountToHide on: aStream.	aStream nextPut: $}!

show: theMillisecondCountToShow hide: theMillisecondCountToHide	millisecondCountToShow := theMillisecondCountToShow.	millisecondCountToHide := theMillisecondCountToHide! !
!BootstrapDelayConfiguration categoriesFor: #initialize!initialization!public! !
!BootstrapDelayConfiguration categoriesFor: #javascriptContentOn:!printing!public! !
!BootstrapDelayConfiguration categoriesFor: #show:hide:!Configuring!public! !

