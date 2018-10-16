﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Interface
	instanceVariableNames: 'name messages'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Interface guid: (GUID fromString: '{b6e84e71-7f09-4189-bbdb-05faa5289553}')!
Interface comment: 'I''m an interface declaring a set of messages to be understood by the objects implementing me.
!Interface categoriesForClass!Buoy-Metaprogramming! !
!Interface methodsFor!

initializeNamed: aName declaring: aSelectorCollection

isImplementedBy: anObject

isImplementedByInstancesOf: aClass

printOn: aStream
!Interface categoriesFor: #initializeNamed:declaring:!initialization!public! !
!Interface categoriesFor: #isImplementedBy:!public!testing! !
!Interface categoriesFor: #isImplementedByInstancesOf:!public!testing! !
!Interface categoriesFor: #printOn:!printing!public! !

!Interface class methodsFor!

named: aName declaring: aSelectorCollection
!Interface class categoriesFor: #named:declaring:!instance creation!public! !
