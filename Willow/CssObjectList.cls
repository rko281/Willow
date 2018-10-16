﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssObjectList
	instanceVariableNames: 'components'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssObjectList guid: (GUID fromString: '{0c853193-c833-4d02-aa90-7241d340de16}')!
CssObjectList comment: 'I represent a list of css objects'!
!CssObjectList categoriesForClass!RenoirSt-Common! !
!CssObjectList methodsFor!

cssContentOn: aStream

initializeWithAll: aCssObjectCollection
!CssObjectList categoriesFor: #cssContentOn:!Printing!public! !
!CssObjectList categoriesFor: #initializeWithAll:!initialize/release!public! !

!CssObjectList class methodsFor!

with: firstCssObject with: secondCssObject

withAll: aCssObjectCollection
!CssObjectList class categoriesFor: #with:with:!instance creation!public! !
!CssObjectList class categoriesFor: #withAll:!instance creation!public! !
