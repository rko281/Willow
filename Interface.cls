"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Interface
	instanceVariableNames: 'name messages'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Interface guid: (GUID fromString: '{b6e84e71-7f09-4189-bbdb-05faa5289553}')!
Interface comment: 'I''m an interface declaring a set of messages to be understood by the objects implementing me.I''m not intended to be used as some kind of static type check, but to document an expected protocol.'!
!Interface categoriesForClass!Buoy-Metaprogramming! !
!Interface methodsFor!

initializeNamed: aName declaring: aSelectorCollection	name := aName.	messages := aSelectorCollection!

isImplementedBy: anObject	^ messages allSatisfy: [ :message | anObject respondsTo: message ]!

isImplementedByInstancesOf: aClass	^ messages allSatisfy: [ :message | aClass canUnderstand: message ]!

printOn: aStream	aStream nextPutAll: name! !
!Interface categoriesFor: #initializeNamed:declaring:!initialization!public! !
!Interface categoriesFor: #isImplementedBy:!public!testing! !
!Interface categoriesFor: #isImplementedByInstancesOf:!public!testing! !
!Interface categoriesFor: #printOn:!printing!public! !

!Interface class methodsFor!

named: aName declaring: aSelectorCollection	AssertionChecker refuse: [ aSelectorCollection isEmpty ] because: 'An interface must declare at least one message.' raising: InstanceCreationFailed.	^ self new initializeNamed: aName declaring: aSelectorCollection! !
!Interface class categoriesFor: #named:declaring:!instance creation!public! !

