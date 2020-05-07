"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssAttributeMatchingCondition
	instanceVariableNames: 'attributeValue condition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAttributeMatchingCondition guid: (GUID fromString: '{de082b40-aefb-4cfe-9c46-2ed6d18d1aca}')!
CssAttributeMatchingCondition comment: 'A CssAttributeMatchingOperation is a matching operation over the value of an attribute. Common examples are: = , += , ^=. See references for the whole list.'!
!CssAttributeMatchingCondition categoriesForClass!RenoirSt-Core-Selectors! !
!CssAttributeMatchingCondition methodsFor!

cssContentOn: aStream 		condition cssContentOn: aStream.	aStream nextPut: $".	attributeValue cssContentOn: aStream.	aStream nextPut: $"!

initializeMatchingCondition: aCondition value: aValue	condition := aCondition.	attributeValue := aValue! !
!CssAttributeMatchingCondition categoriesFor: #cssContentOn:!Printing!public! !
!CssAttributeMatchingCondition categoriesFor: #initializeMatchingCondition:value:!initialize/release!public! !

!CssAttributeMatchingCondition class methodsFor!

condition: aCondition value: aValue	^ self new initializeMatchingCondition: aCondition value: aValue! !
!CssAttributeMatchingCondition class categoriesFor: #condition:value:!Instance Creation!public! !

