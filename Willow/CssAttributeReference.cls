﻿"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssAttributeReference
	instanceVariableNames: 'attributeName typeOrUnit fallback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssAttributeReference guid: (GUID fromString: '{5b56a3bd-66cc-44a6-b3f8-eda63a868def}')!
CssAttributeReference comment: 'A CssAttributeReference represents a CSS function allowed as a component value in properties applied to an element or pseudo-element. It returns the value of an attribute on the element. If used on a pseudo-element, it returns the value of the attribute on the pseudo-element''s originating element.'!
!CssAttributeReference categoriesForClass!RenoirSt-Units! !
!CssAttributeReference methodsFor!

asTypeOrUnit: aCssTypeOrNamedUnit

cssFunctionParametersContentOn: aStream

functionName

initializeWithAttributeNamed: aString withType: aCssTypeOrNamedUnit withFallback: aCssFallback
!CssAttributeReference categoriesFor: #asTypeOrUnit:!private! !
!CssAttributeReference categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssAttributeReference categoriesFor: #functionName!private! !
!CssAttributeReference categoriesFor: #initializeWithAttributeNamed:withType:withFallback:!initialize / release!public! !

!CssAttributeReference class methodsFor!

toAttributeNamed: aString 

toAttributeNamed: aString ofType: aCssTypeOrUnit

toAttributeNamed: aString ofType: aCssUnitOrType withFallback: aCssValue

toAttributeNamed: aString ofType: aCssTypeOrUnit withFallbackSpecification: aCssFallback

toStringAttributeNamed: aString withFallback: aFallbackString
!CssAttributeReference class categoriesFor: #toAttributeNamed:!Instance Creation!public! !
!CssAttributeReference class categoriesFor: #toAttributeNamed:ofType:!Instance Creation!public! !
!CssAttributeReference class categoriesFor: #toAttributeNamed:ofType:withFallback:!Instance Creation!public! !
!CssAttributeReference class categoriesFor: #toAttributeNamed:ofType:withFallbackSpecification:!private! !
!CssAttributeReference class categoriesFor: #toStringAttributeNamed:withFallback:!Instance Creation!public! !
