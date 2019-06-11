"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Namespace
	instanceVariableNames: 'bindings'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Namespace guid: (GUID fromString: '{93e0c00c-84e3-4dcd-93c1-892712f32ebf}')!
Namespace comment: 'I''m a namespace, my responsibility is to bind a set of symbols to objects of various kinds, so that these objects may be referred to by name.'!
!Namespace categoriesForClass!Buoy-Metaprogramming! !
!Namespace methodsFor!

>> aName	^ self at: aName!

at: aName	^ self at: aName ifAbsent: [ self signalNotFoundFor: aName ]!

at: aName ifAbsent: aBlock	^ bindings at: aName ifAbsent: aBlock!

bind: aSymbol to: anObject	bindings		at: aSymbol		ifPresent: [ ConflictingObjectFound signal: ('<1s> is already bound to some object.' expandMacrosWith: aSymbol) ]		ifAbsentPut: anObject!

initialize	super initialize.	bindings := IdentityDictionary new!

names	^ bindings keys!

rebind: aSymbol to: anObject	bindings at: aSymbol put: anObject!

removeBindingFor: aSymbol	^ bindings removeKey: aSymbol ifAbsent: [ self signalNotFoundFor: aSymbol ]!

signalNotFoundFor: aName	^ ObjectNotFound signal: ('There''s no object bound to <1s>' expandMacrosWith: aName)! !
!Namespace categoriesFor: #>>!accessing!public! !
!Namespace categoriesFor: #at:!accessing!public! !
!Namespace categoriesFor: #at:ifAbsent:!accessing!public! !
!Namespace categoriesFor: #bind:to:!binding!public! !
!Namespace categoriesFor: #initialize!initialization!public! !
!Namespace categoriesFor: #names!accessing!public! !
!Namespace categoriesFor: #rebind:to:!binding!public! !
!Namespace categoriesFor: #removeBindingFor:!binding!public! !
!Namespace categoriesFor: #signalNotFoundFor:!private / signaling!public! !

