"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssAttributeSelector
	instanceVariableNames: 'selector attributeName matchingCondition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAttributeSelector guid: (GUID fromString: '{2fffc04b-8724-4a24-98e5-1153a9acffc9}')!
CssAttributeSelector comment: 'Selectors allow the representation of an element''s attributes. When a selector is used as an expression to match against an element, attribute selectors must be considered to match an element if that element has an attribute that matches the attribute represented by the attribute selector.'!
!CssAttributeSelector categoriesForClass!RenoirSt-Core-Selectors! !
!CssAttributeSelector methodsFor!

cssContentOn: aStream		selector cssContentOn: aStream.	aStream nextPut: $[.	attributeName cssContentOn: aStream.	matchingCondition cssContentOn: aStream.	aStream nextPut: $]!

initializeFor: aSelector attribute: anAttributeName matchingCondition: aMatchingCondition	selector := aSelector.	attributeName := anAttributeName.	matchingCondition := aMatchingCondition ! !
!CssAttributeSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssAttributeSelector categoriesFor: #initializeFor:attribute:matchingCondition:!initialize/release!public! !

!CssAttributeSelector class methodsFor!

attribute: anAttributeName of: aSelector beginsWith: aValue	^ self		for: aSelector		attribute: anAttributeName		matchingCondition: (CssAttributeMatchingCondition condition: '^=' value: aValue)!

attribute: anAttributeName of: aSelector endsWith: aValue	^ self		for: aSelector		attribute: anAttributeName		matchingCondition: (CssAttributeMatchingCondition condition: '$=' value: aValue)!

attribute: anAttributeName of: aSelector includes: aValue		^self		for: aSelector		attribute: anAttributeName		matchingCondition: (CssAttributeMatchingCondition condition: '~=' value: aValue)!

attribute: anAttributeName of: aSelector includesSubstring: aValue	^ self		for: aSelector		attribute: anAttributeName		matchingCondition: (CssAttributeMatchingCondition condition: '*=' value: aValue)!

firstValueOfAttribute: anAttributeName of: aSelector beginsWith: aValue	^ self		for: aSelector		attribute: anAttributeName		matchingCondition: (CssAttributeMatchingCondition condition: '|=' value: aValue)!

for: aSelector attribute: aString matchingCondition: aCondition	^ self new initializeFor: aSelector attribute: aString matchingCondition: aCondition!

having: aSelector theAttribute: aString 		^self for: aSelector attribute: aString matchingCondition: ''!

isAttribute: anAttributeName of: aSelector equalTo: aValue		^ self		for: aSelector		attribute: anAttributeName		matchingCondition: (CssAttributeMatchingCondition condition: '=' value: aValue)! !
!CssAttributeSelector class categoriesFor: #attribute:of:beginsWith:!Instance Creation!public! !
!CssAttributeSelector class categoriesFor: #attribute:of:endsWith:!Instance Creation!public! !
!CssAttributeSelector class categoriesFor: #attribute:of:includes:!Instance Creation!public! !
!CssAttributeSelector class categoriesFor: #attribute:of:includesSubstring:!Instance Creation!public! !
!CssAttributeSelector class categoriesFor: #firstValueOfAttribute:of:beginsWith:!Instance Creation!public! !
!CssAttributeSelector class categoriesFor: #for:attribute:matchingCondition:!private! !
!CssAttributeSelector class categoriesFor: #having:theAttribute:!Instance Creation!public! !
!CssAttributeSelector class categoriesFor: #isAttribute:of:equalTo:!Instance Creation!public! !

