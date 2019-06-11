"Filed out from Dolphin Smalltalk 7"!

Number subclass: #PartsPerFraction
	instanceVariableNames: 'ratio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PartsPerFraction guid: (GUID fromString: '{15e751f5-0e40-4f6d-ac91-4026dd1020ce}')!
PartsPerFraction comment: 'I''m an abstract class representing several kinds of parts-per-fraction objects: like percentages, permille, basis point, etc.'!
!PartsPerFraction categoriesForClass!Buoy-Math! !
!PartsPerFraction methodsFor!

- aNumber	^ (aNumber isA: self class)		ifTrue: [ self class ratio: ratio - aNumber ]		ifFalse: [ ratio - aNumber ]!

* aNumber	^ratio * aNumber !

/ aNumber 	^ratio / aNumber!

+ aNumber	^ (aNumber isA: self class)		ifTrue: [ self class ratio: ratio + aNumber ]		ifFalse: [ ratio + aNumber ]!

< aNumber 		^ratio < aNumber !

= aNumber	^ aNumber isNumber and: [ self asNumber = aNumber asNumber ]!

adaptToFraction: aFraction andSend: selector	^ aFraction adaptToFraction: ratio andSend: selector!

adaptToInteger: anInteger andSend: aSymbol		^anInteger adaptToInteger: ratio  andSend: aSymbol !

asFloat	^ ratio asFloat!

asFraction	^ ratio asFraction!

asNumber	^ ratio!

hash	^ ratio hash!

initializeRatio: aRatio	ratio := aRatio !

negated	^ self class ratio: ratio negated!

reciprocal	^ self class ratio: ratio reciprocal!

value	^ratio * self class fraction ! !
!PartsPerFraction categoriesFor: #-!arithmetic!public! !
!PartsPerFraction categoriesFor: #*!arithmetic!public! !
!PartsPerFraction categoriesFor: #/!arithmetic!public! !
!PartsPerFraction categoriesFor: #+!arithmetic!public! !
!PartsPerFraction categoriesFor: #<!public!testing! !
!PartsPerFraction categoriesFor: #=!public!testing! !
!PartsPerFraction categoriesFor: #adaptToFraction:andSend:!converting!public! !
!PartsPerFraction categoriesFor: #adaptToInteger:andSend:!converting!public! !
!PartsPerFraction categoriesFor: #asFloat!converting!public! !
!PartsPerFraction categoriesFor: #asFraction!converting!public! !
!PartsPerFraction categoriesFor: #asNumber!converting!public! !
!PartsPerFraction categoriesFor: #hash!hash!public! !
!PartsPerFraction categoriesFor: #initializeRatio:!initialization!public! !
!PartsPerFraction categoriesFor: #negated!arithmetic!public! !
!PartsPerFraction categoriesFor: #reciprocal!arithmetic!public! !
!PartsPerFraction categoriesFor: #value!evaluating!public! !

!PartsPerFraction class methodsFor!

fraction	^ self subclassResponsibility!

of: aNumber	^ self ratio: aNumber / self fraction!

ratio: aRatio			^self basicNew initializeRatio: aRatio ! !
!PartsPerFraction class categoriesFor: #fraction!private! !
!PartsPerFraction class categoriesFor: #of:!Instance Creation!public! !
!PartsPerFraction class categoriesFor: #ratio:!Instance Creation!public! !

