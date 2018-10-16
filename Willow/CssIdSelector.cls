﻿"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssIdSelector
	instanceVariableNames: 'id selector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssIdSelector guid: (GUID fromString: '{b92afa6b-7df2-403b-b024-48b829c91ce7}')!
CssIdSelector comment: 'Document languages may contain attributes that are declared to be of type ID. What makes attributes of type ID special is that no two such attributes can have the same value in a conformant document, regardless of the type of the elements that carry them; whatever the document language, an ID typed attribute can be used to uniquely identify its element. In HTML all ID attributes are named "id"; XML applications may name ID attributes differently, but the same restriction applies.
!CssIdSelector categoriesForClass!RenoirSt-Selectors! !
!CssIdSelector methodsFor!

cssContentOn: aStream

initializeFor: anId over: aSelector 
!CssIdSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssIdSelector categoriesFor: #initializeFor:over:!initialize/release!public! !

!CssIdSelector class methodsFor!

assertIsASymbol: anObject

for: anId over: aSelector
!CssIdSelector class categoriesFor: #assertIsASymbol:!private! !
!CssIdSelector class categoriesFor: #for:over:!instance creation!public! !
