﻿"Filed out from Dolphin Smalltalk 7"!

Number subclass: #PartsPerFraction
	instanceVariableNames: 'ratio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PartsPerFraction guid: (GUID fromString: '{5847cd3e-de4e-4677-8303-3858e8536045}')!
PartsPerFraction comment: 'I''m an abstract class representing several kinds of parts-per-fraction objects: like percentages, permille, basis point, etc.'!
!PartsPerFraction categoriesForClass!Buoy-Math! !
!PartsPerFraction methodsFor!

- aNumber

* aNumber

/ aNumber 

+ aNumber

< aNumber 

= aNumber

adaptToFraction: aFraction andSend: selector

adaptToInteger: anInteger andSend: aSymbol

asFloat

asNumber

hash

initializeRatio: aRatio

negated

reciprocal

value
!PartsPerFraction categoriesFor: #-!arithmetic!public! !
!PartsPerFraction categoriesFor: #*!arithmetic!public! !
!PartsPerFraction categoriesFor: #/!arithmetic!public! !
!PartsPerFraction categoriesFor: #+!arithmetic!public! !
!PartsPerFraction categoriesFor: #<!public!testing! !
!PartsPerFraction categoriesFor: #=!public!testing! !
!PartsPerFraction categoriesFor: #adaptToFraction:andSend:!converting!public! !
!PartsPerFraction categoriesFor: #adaptToInteger:andSend:!converting!public! !
!PartsPerFraction categoriesFor: #asFloat!converting!public! !
!PartsPerFraction categoriesFor: #asNumber!converting!public! !
!PartsPerFraction categoriesFor: #hash!hash!public! !
!PartsPerFraction categoriesFor: #initializeRatio:!initialization!public! !
!PartsPerFraction categoriesFor: #negated!arithmetic!public! !
!PartsPerFraction categoriesFor: #reciprocal!arithmetic!public! !
!PartsPerFraction categoriesFor: #value!evaluating!public! !

!PartsPerFraction class methodsFor!

fraction

of: aNumber

ratio: aRatio
!PartsPerFraction class categoriesFor: #fraction!private! !
!PartsPerFraction class categoriesFor: #of:!Instance Creation!public! !
!PartsPerFraction class categoriesFor: #ratio:!Instance Creation!public! !
