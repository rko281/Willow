"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssMediaQueryExpression
	instanceVariableNames: 'mediaFeature values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssMediaQueryExpression guid: (GUID fromString: '{ebb938dd-f43e-4b99-a9de-b55cbe7e0245}')!
CssMediaQueryExpression comment: 'A CssMediaQueryExpression represents a condition to check of a particular media feature.'!
!CssMediaQueryExpression categoriesForClass!RenoirSt-Core-MediaQueries! !
!CssMediaQueryExpression methodsFor!

cssContentOn: aStream	aStream nextPut: $(.	mediaFeature cssContentOn: aStream.	values		do: [ :value | 			aStream				nextPut: $:;				space.			value cssContentOn: aStream ].	aStream nextPut: $)!

initializeForFeatureNamed: aString withValues: aCollection	mediaFeature := aString.	values := aCollection collect: [ :aValue | CssMediaQueryConstants at: aValue ifAbsent: [ aValue ] ]! !
!CssMediaQueryExpression categoriesFor: #cssContentOn:!Printing!public! !
!CssMediaQueryExpression categoriesFor: #initializeForFeatureNamed:withValues:!initialize/release!public! !

!CssMediaQueryExpression class methodsFor!

assertNotEmpty: aString	AssertionChecker refuse: [ aString isEmpty ] because: 'A media feature name can''t be empty' raising: InstanceCreationFailed!

forFeatureNamed: aFeatureName	^self forFeatureNamed: aFeatureName withValues: #()!

forFeatureNamed: aString withValue: aValue	^ self forFeatureNamed: aString withValues: {aValue}!

forFeatureNamed: aString withValues: aCollection	self assertNotEmpty: aString.	^ self new initializeForFeatureNamed: aString withValues: aCollection! !
!CssMediaQueryExpression class categoriesFor: #assertNotEmpty:!private! !
!CssMediaQueryExpression class categoriesFor: #forFeatureNamed:!Instance Creation!public! !
!CssMediaQueryExpression class categoriesFor: #forFeatureNamed:withValue:!Instance Creation!public! !
!CssMediaQueryExpression class categoriesFor: #forFeatureNamed:withValues:!private! !

