"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Codec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Codec guid: (GUID fromString: '{da800352-c103-4302-9e59-fd8f11af6011}')!
Codec comment: 'I''m an abstract class representing a text coder/encoder.'!
!Codec categoriesForClass!Willow-Core-Frontend! !
!Codec methodsFor!

canCreate: anObject	^self subclassResponsibility!

decode: aString	^ self subclassResponsibility!

encode: anObject	^ self subclassResponsibility! !
!Codec categoriesFor: #canCreate:!public!testing! !
!Codec categoriesFor: #decode:!converting!public! !
!Codec categoriesFor: #encode:!converting!public! !

