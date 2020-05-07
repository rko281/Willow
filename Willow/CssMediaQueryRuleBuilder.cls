"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CssMediaQueryRuleBuilder
	instanceVariableNames: 'styleSheet mediaType expressions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssMediaQueryRuleBuilder guid: (GUID fromString: '{7f199282-cf33-458b-b711-34a1c61fe44a}')!
CssMediaQueryRuleBuilder comment: 'A CssMediaQueryRuleBuilder is a builder to help creating media queries'!
!CssMediaQueryRuleBuilder categoriesForClass!RenoirSt-Core-MediaQueries! !
!CssMediaQueryRuleBuilder methodsFor!

addExpressionForFeatureNamed: aFeatureName withValue: aValue	expressions add: (CssMediaQueryExpression forFeatureNamed: aFeatureName withValue: aValue)!

aspectRatio: aFraction	self addExpressionForFeatureNamed: 'aspect-ratio' withValue: aFraction !

build	^CssMediaQueryRule ofType: mediaType conforming: expressions enabling: styleSheet !

color: anInteger 		self addExpressionForFeatureNamed: 'color' withValue: anInteger !

colorIndex: anInteger 		self addExpressionForFeatureNamed: 'color-index' withValue: anInteger !

deviceHeight: aCssLenght 		self addExpressionForFeatureNamed: 'device-height' withValue: aCssLenght !

deviceWidth: aCssLenght 		self addExpressionForFeatureNamed: 'device-width' withValue: aCssLenght !

grid: anInteger 		self addExpressionForFeatureNamed: 'grid' withValue: anInteger !

height: aCssLenght 		self addExpressionForFeatureNamed: 'height' withValue: aCssLenght !

initialize	super initialize.	styleSheet := CascadingStyleSheet withAll: #().	expressions := OrderedCollection new.	mediaType := 'all'!

maxAspectRatio: aFraction	self addExpressionForFeatureNamed: 'max-aspect-ratio' withValue: aFraction !

maxColor: anInteger 	self addExpressionForFeatureNamed: 'max-color' withValue: anInteger !

maxColorIndex: anInteger 		self addExpressionForFeatureNamed: 'max-color-index' withValue: anInteger !

maxDeviceHeight: aCssLenght 		self addExpressionForFeatureNamed: 'max-device-height' withValue: aCssLenght !

maxDeviceWidth: aCssLenght 		self addExpressionForFeatureNamed: 'max-device-width' withValue: aCssLenght !

maxHeight: aCssLenght 		self addExpressionForFeatureNamed: 'max-height' withValue: aCssLenght !

maxMonochrome: anInteger 		self addExpressionForFeatureNamed: 'max-monochrome' withValue: anInteger !

maxWidth: aCssLenght 		self addExpressionForFeatureNamed: 'max-width' withValue: aCssLenght !

minAspecRatio: aFraction	self addExpressionForFeatureNamed: 'min-aspect-ratio' withValue: aFraction !

minColor: anInteger 		self addExpressionForFeatureNamed: 'min-color' withValue: anInteger !

minColorIndex: anInteger 		self addExpressionForFeatureNamed: 'min-color-index' withValue: anInteger !

minDeviceHeight: aCssLenght 		self addExpressionForFeatureNamed: 'min-device-height' withValue: aCssLenght !

minDeviceWidth: aCssLenght 		self addExpressionForFeatureNamed: 'min-device-width' withValue: aCssLenght !

minHeight: aCssLenght 		self addExpressionForFeatureNamed: 'min-height' withValue: aCssLenght !

minMonochrome: anInteger 		self addExpressionForFeatureNamed: 'min-monochrome' withValue: anInteger !

minWidth: aCssLenght 	self addExpressionForFeatureNamed: 'min-width' withValue: aCssLenght !

monochrome: anInteger 		self addExpressionForFeatureNamed: 'monochrome' withValue: anInteger !

orientation: anOrientation	self addExpressionForFeatureNamed: 'orientation' withValue: anOrientation !

resolution: aCssResolution 		self addExpressionForFeatureNamed: 'resolution' withValue: aCssResolution !

scan: aScanType	self addExpressionForFeatureNamed: 'scan' withValue: aScanType !

type: aMediaType	mediaType := aMediaType!

useStyleSheet: aCascadingStyleSheet 		styleSheet := aCascadingStyleSheet !

width: aCssLenght 		self addExpressionForFeatureNamed: 'width' withValue: aCssLenght ! !
!CssMediaQueryRuleBuilder categoriesFor: #addExpressionForFeatureNamed:withValue:!private! !
!CssMediaQueryRuleBuilder categoriesFor: #aspectRatio:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #build!Building!public! !
!CssMediaQueryRuleBuilder categoriesFor: #color:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #colorIndex:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #deviceHeight:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #deviceWidth:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #grid:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #height:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #initialize!initialize/release!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxAspectRatio:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxColor:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxColorIndex:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxDeviceHeight:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxDeviceWidth:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxHeight:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxMonochrome:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #maxWidth:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minAspecRatio:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minColor:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minColorIndex:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minDeviceHeight:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minDeviceWidth:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minHeight:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minMonochrome:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #minWidth:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #monochrome:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #orientation:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #resolution:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #scan:!Configuring / Features!public! !
!CssMediaQueryRuleBuilder categoriesFor: #type:!Configuring!public! !
!CssMediaQueryRuleBuilder categoriesFor: #useStyleSheet:!Configuring!public! !
!CssMediaQueryRuleBuilder categoriesFor: #width:!Configuring / Features!public! !

