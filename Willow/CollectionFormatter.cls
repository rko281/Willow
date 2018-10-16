﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CollectionFormatter
	instanceVariableNames: 'separator elementFormatter lastSeparatorOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CollectionFormatter guid: (GUID fromString: '{cdd04e2d-4bcb-427a-b8cb-c75cce388521}')!
CollectionFormatter comment: 'I''m a collection formatter allowing format a collection separating its elements with a provided separator. I allow to use a diferent separator for the last element and also a block to perform a element specific formatting.
!CollectionFormatter categoriesForClass!Buoy-Collections! !
!CollectionFormatter methodsFor!

format: aCollection

format: aCollection on: aStream

initializeSeparatingEachWith: aSeparator andOptionallyLastWith: anOptional applyingToEach: aBlock

put: aSeparator on: aStream
!CollectionFormatter categoriesFor: #format:!formatting!public! !
!CollectionFormatter categoriesFor: #format:on:!formatting!public! !
!CollectionFormatter categoriesFor: #initializeSeparatingEachWith:andOptionallyLastWith:applyingToEach:!initialization!public! !
!CollectionFormatter categoriesFor: #put:on:!formatting!public! !

!CollectionFormatter class methodsFor!

separatingWith: aSeparator

separatingWith: aSeparator andLastWith: aLastSeparator

separatingWith: aSeparator andLastWith: aLastSeparator applyingToEach: anElementFormatter

separatingWith: aSeparator andOptionallyLastWith: anOptionalSeparator applyingToEach: anElementFormatter

separatingWith: aSeparator applyingToEach: anElementFormatter
!CollectionFormatter class categoriesFor: #separatingWith:!instance creation!public! !
!CollectionFormatter class categoriesFor: #separatingWith:andLastWith:!instance creation!public! !
!CollectionFormatter class categoriesFor: #separatingWith:andLastWith:applyingToEach:!instance creation!public! !
!CollectionFormatter class categoriesFor: #separatingWith:andOptionallyLastWith:applyingToEach:!private! !
!CollectionFormatter class categoriesFor: #separatingWith:applyingToEach:!instance creation!public! !
