﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssMediaQueryExpression
	instanceVariableNames: 'mediaFeature values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssMediaQueryExpression guid: (GUID fromString: '{ebb938dd-f43e-4b99-a9de-b55cbe7e0245}')!
CssMediaQueryExpression comment: 'A CssMediaQueryExpression represents a condition to check of a particular media feature.'!
!CssMediaQueryExpression categoriesForClass!RenoirSt-MediaQueries! !
!CssMediaQueryExpression methodsFor!

cssContentOn: aStream

initializeForFeatureNamed: aString withValues: aCollection
!CssMediaQueryExpression categoriesFor: #cssContentOn:!Printing!public! !
!CssMediaQueryExpression categoriesFor: #initializeForFeatureNamed:withValues:!initialize/release!public! !

!CssMediaQueryExpression class methodsFor!

assertNotEmpty: aString

forFeatureNamed: aFeatureName

forFeatureNamed: aString withValue: aValue

forFeatureNamed: aString withValues: aCollection
!CssMediaQueryExpression class categoriesFor: #assertNotEmpty:!private! !
!CssMediaQueryExpression class categoriesFor: #forFeatureNamed:!Instance Creation!public! !
!CssMediaQueryExpression class categoriesFor: #forFeatureNamed:withValue:!Instance Creation!public! !
!CssMediaQueryExpression class categoriesFor: #forFeatureNamed:withValues:!private! !
