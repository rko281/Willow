"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CollectionFormatter
	instanceVariableNames: 'separator elementFormatter lastSeparatorOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CollectionFormatter guid: (GUID fromString: '{cdd04e2d-4bcb-427a-b8cb-c75cce388521}')!
CollectionFormatter comment: 'I''m a collection formatter allowing format a collection separating its elements with a provided separator. I allow to use a diferent separator for the last element and also a block to perform a element specific formatting.Implementation Notes:	I use a index to detect the last element and use the specific separator if present.'!
!CollectionFormatter categoriesForClass!Buoy-Collections! !
!CollectionFormatter methodsFor!

format: aCollection	 ^ self format:  aCollection on: (WriteStream on: String new)!

format: aCollection on: aStream	| index size |	index := 1.	size := aCollection size.	aCollection		do: [ :element | 			index := index + 1.			aStream nextPutAll: (elementFormatter value: element) ]		separatedBy: [ index = size				ifTrue: [ lastSeparatorOptional						withContentDo: [ :content | self put: content on: aStream ]						ifUnused: [ self put: separator on: aStream ] ]				ifFalse: [ self put: separator on: aStream ] ].	^ aStream contents!

initializeSeparatingEachWith: aSeparator andOptionallyLastWith: anOptional applyingToEach: aBlock	separator := aSeparator.	lastSeparatorOptional := anOptional.	elementFormatter := aBlock!

put: aSeparator on: aStream	^ aStream nextPutAll: aSeparator! !
!CollectionFormatter categoriesFor: #format:!formatting!public! !
!CollectionFormatter categoriesFor: #format:on:!formatting!public! !
!CollectionFormatter categoriesFor: #initializeSeparatingEachWith:andOptionallyLastWith:applyingToEach:!initialization!public! !
!CollectionFormatter categoriesFor: #put:on:!formatting!public! !

!CollectionFormatter class methodsFor!

separatingWith: aSeparator	^ self		separatingWith: aSeparator		andOptionallyLastWith: Optional unused		applyingToEach: [ :element | element asString ]!

separatingWith: aSeparator andLastWith: aLastSeparator	^ self		separatingWith: aSeparator		andLastWith: aLastSeparator		applyingToEach: [ :element | element asString ]!

separatingWith: aSeparator andLastWith: aLastSeparator applyingToEach: anElementFormatter	^ self		separatingWith: aSeparator		andOptionallyLastWith: (Optional containing: aLastSeparator)		applyingToEach: anElementFormatter!

separatingWith: aSeparator andOptionallyLastWith: anOptionalSeparator applyingToEach: anElementFormatter	^ super new		initializeSeparatingEachWith: aSeparator asString		andOptionallyLastWith: anOptionalSeparator		applyingToEach: anElementFormatter!

separatingWith: aSeparator applyingToEach: anElementFormatter	^ self		separatingWith: aSeparator		andOptionallyLastWith: Optional unused		applyingToEach: anElementFormatter! !
!CollectionFormatter class categoriesFor: #separatingWith:!instance creation!public! !
!CollectionFormatter class categoriesFor: #separatingWith:andLastWith:!instance creation!public! !
!CollectionFormatter class categoriesFor: #separatingWith:andLastWith:applyingToEach:!instance creation!public! !
!CollectionFormatter class categoriesFor: #separatingWith:andOptionallyLastWith:applyingToEach:!private! !
!CollectionFormatter class categoriesFor: #separatingWith:applyingToEach:!instance creation!public! !

