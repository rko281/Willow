"Filed out from Dolphin Smalltalk 7"!

Binding subclass: #DefinedBinding
	instanceVariableNames: 'content'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
DefinedBinding guid: (GUID fromString: '{aa421b1a-9c9a-418e-b9c0-6a58f2033096}')!
DefinedBinding comment: 'I represent  a binding to some object, so I can return a content. '!
!DefinedBinding categoriesForClass!Buoy-Dynamic-Binding! !
!DefinedBinding methodsFor!

content	^ content!

initializeConnectedTo: anObject	content := anObject ! !
!DefinedBinding categoriesFor: #content!Accessing!public! !
!DefinedBinding categoriesFor: #initializeConnectedTo:!initialize!public! !

!DefinedBinding class methodsFor!

connectedTo: anObject	^ self new initializeConnectedTo: anObject! !
!DefinedBinding class categoriesFor: #connectedTo:!Instance Creation!public! !

