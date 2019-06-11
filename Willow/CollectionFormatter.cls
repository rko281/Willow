"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CollectionFormatter
	instanceVariableNames: 'separator elementFormatter lastSeparatorOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CollectionFormatter guid: (GUID fromString: '{6da107be-38b6-450d-a74e-a5f00da82e73}')!
CollectionFormatter comment: 'I''m a collection formatter allowing format a collection separating its elements with a provided separator. I allow to use a diferent separator for the last element and also a block to perform a element specific formatting.Implementation Notes:	I use a index to detect the last element and use the specific separator if present.'!
!CollectionFormatter categoriesForClass!Buoy-Collections! !
!CollectionFormatter methodsFor!

format: aCollection	^ String streamContents: [ :stream | self format: aCollection on: stream ]!

format: aCollection on: aStream	| index size |	index := 1.	size := aCollection size.	aCollection		do: [ :element | 			index := index + 1.			aStream nextPutAll: ( elementFormatter value: element )			]		separatedBy: [ [ aStream nextPutAll: separator ]				unless: index = size				inWhichCase: [ lastSeparatorOptional						withContentDo: [ :content | aStream nextPutAll: content ]						ifUnused: [ aStream nextPutAll: separator ]					]			]!

initializeSeparatingEachWith: aSeparator andOptionallyLastWith: anOptional applyingToEach: aBlock	separator := aSeparator.	lastSeparatorOptional := anOptional.	elementFormatter := aBlock! !
!CollectionFormatter categoriesFor: #format:!formatting!public! !
!CollectionFormatter categoriesFor: #format:on:!formatting!public! !
!CollectionFormatter categoriesFor: #initializeSeparatingEachWith:andOptionallyLastWith:applyingToEach:!initialization!public! !

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

