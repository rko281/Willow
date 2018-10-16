﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Namespace
	instanceVariableNames: 'bindings'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Namespace guid: (GUID fromString: '{56b7920f-ee95-48c9-a6b2-31c71f71879a}')!
Namespace comment: 'I''m a namespace, my responsibility is to bind a set of symbols to objects of various kinds, so that these objects may be referred to by name.'!
!Namespace categoriesForClass!Buoy-Metaprogramming! !
!Namespace methodsFor!

>> aName

at: aName

at: aName ifAbsent: aBlock


bind: aSymbol to: anObject


initialize

names

rebind: aSymbol to: anObject

removeBindingFor: aSymbol

signalNotFoundFor: aName
!Namespace categoriesFor: #>>!accessing!public! !
!Namespace categoriesFor: #at:!accessing!public! !
!Namespace categoriesFor: #at:ifAbsent:!accessing!public! !
!Namespace categoriesFor: #bind:to:!binding!public! !
!Namespace categoriesFor: #initialize!initialization!public! !
!Namespace categoriesFor: #names!accessing!public! !
!Namespace categoriesFor: #rebind:to:!binding!public! !
!Namespace categoriesFor: #removeBindingFor:!binding!public! !
!Namespace categoriesFor: #signalNotFoundFor:!private / signaling!public! !

!Namespace class methodsFor!

new

	^super new initialize! !
!Namespace class categoriesFor: #new!public! !
