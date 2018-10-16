"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssAttributeReference
	instanceVariableNames: 'attributeName typeOrUnit fallback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAttributeReference guid: (GUID fromString: '{5b56a3bd-66cc-44a6-b3f8-eda63a868def}')!
CssAttributeReference comment: 'A CssAttributeReference represents a CSS function allowed as a component value in properties applied to an element or pseudo-element. It returns the value of an attribute on the element. If used on a pseudo-element, it returns the value of the attribute on the pseudo-element''s originating element.'!
!CssAttributeReference categoriesForClass!RenoirSt-Units! !
!CssAttributeReference methodsFor!

asTypeOrUnit: aCssTypeOrNamedUnit	^ CssConstants >> #units at: aCssTypeOrNamedUnit ifAbsent: [ aCssTypeOrNamedUnit ]!

cssFunctionParametersContentOn: aStream	attributeName cssContentOn: aStream.	aStream space.	typeOrUnit cssContentOn: aStream.	fallback cssContentOn: aStream!

functionName	^'attr'!

initializeWithAttributeNamed: aString withType: aCssTypeOrNamedUnit withFallback: aCssFallback	attributeName := aString.	typeOrUnit := self asTypeOrUnit: aCssTypeOrNamedUnit.	fallback := aCssFallback! !
!CssAttributeReference categoriesFor: #asTypeOrUnit:!private! !
!CssAttributeReference categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssAttributeReference categoriesFor: #functionName!private! !
!CssAttributeReference categoriesFor: #initializeWithAttributeNamed:withType:withFallback:!initialize / release!public! !

!CssAttributeReference class methodsFor!

toAttributeNamed: aString 	^self toAttributeNamed: aString ofType: 'string'!

toAttributeNamed: aString ofType: aCssTypeOrUnit	^ self toAttributeNamed: aString ofType: aCssTypeOrUnit withFallbackSpecification: CssNoFallbackSpecified new!

toAttributeNamed: aString ofType: aCssUnitOrType withFallback: aCssValue	^ self		toAttributeNamed: aString		ofType: aCssUnitOrType		withFallbackSpecification: (CssFallbackSpecified withValue: aCssValue)!

toAttributeNamed: aString ofType: aCssTypeOrUnit withFallbackSpecification: aCssFallback		^self new initializeWithAttributeNamed: aString withType: aCssTypeOrUnit withFallback: aCssFallback!

toStringAttributeNamed: aString withFallback: aFallbackString	^ self		toAttributeNamed: aString		ofType: 'string'		withFallbackSpecification: (CssFallbackSpecified withValue: ('"<1s>"' expandMacrosWith: aFallbackString))! !
!CssAttributeReference class categoriesFor: #toAttributeNamed:!Instance Creation!public! !
!CssAttributeReference class categoriesFor: #toAttributeNamed:ofType:!Instance Creation!public! !
!CssAttributeReference class categoriesFor: #toAttributeNamed:ofType:withFallback:!Instance Creation!public! !
!CssAttributeReference class categoriesFor: #toAttributeNamed:ofType:withFallbackSpecification:!private! !
!CssAttributeReference class categoriesFor: #toStringAttributeNamed:withFallback:!Instance Creation!public! !

