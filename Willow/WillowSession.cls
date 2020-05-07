"Filed out from Dolphin Smalltalk 7"!

WASession subclass: #WillowSession
	instanceVariableNames: 'componentSupplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowSession guid: (GUID fromString: '{3dc8a5d5-1d78-4cfd-86bb-544a42f1f7e6}')!
WillowSession comment: 'I represent a basic Session for Willow. '!
!WillowSession categoriesForClass!Willow-Core-Applications! !
!WillowSession methodsFor!

componentSupplier	^ componentSupplier!

startUpApplicationContextFor: aWillowApplication	"This hook provides the capability to set-up an application specific context"	componentSupplier := aWillowApplication componentSupplierForApplication! !
!WillowSession categoriesFor: #componentSupplier!accessing!public! !
!WillowSession categoriesFor: #startUpApplicationContextFor:!Controlling!public! !

