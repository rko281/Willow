"Filed out from Dolphin Smalltalk 7"!

Binding subclass: #DefinedBinding
	instanceVariableNames: 'content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DefinedBinding guid: (GUID fromString: '{d50fea99-5af0-457b-b603-4bad835ee06a}')!
DefinedBinding comment: 'I represent  a binding to some object, so I can return a content. '!
!DefinedBinding categoriesForClass!Buoy-Dynamic-Binding! !
!DefinedBinding methodsFor!

content	^ content!

initializeConnectedTo: anObject	content := anObject !

isDefined	^ true ! !
!DefinedBinding categoriesFor: #content!Accessing!public! !
!DefinedBinding categoriesFor: #initializeConnectedTo:!initialize!public! !
!DefinedBinding categoriesFor: #isDefined!public!testing! !

!DefinedBinding class methodsFor!

connectedTo: anObject	^ self new initializeConnectedTo: anObject! !
!DefinedBinding class categoriesFor: #connectedTo:!Instance Creation!public! !

