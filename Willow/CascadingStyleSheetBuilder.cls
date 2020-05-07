"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CascadingStyleSheetBuilder
	instanceVariableNames: 'statements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CascadingStyleSheetBuilder guid: (GUID fromString: '{a7d6a652-2f0b-4926-b576-f741825e9742}')!
CascadingStyleSheetBuilder comment: 'A CascadingStyleSheetBuilder is a builder to help creting style sheets.'!
!CascadingStyleSheetBuilder categoriesForClass!RenoirSt-Core-Common! !
!CascadingStyleSheetBuilder methodsFor!

addStatement: aCssStatement	"aCssStatement can be a Rule Set or some At-Rule"	statements add: aCssStatement!

build		^CascadingStyleSheet withAll: statements !

comment: aCommentText	self addStatement: (CssComment for: aCommentText)!

declare: aSubStyleSheetBlock forKeyframesNamed: aName	| styleSheetBuilder |		styleSheetBuilder := self class new.	aSubStyleSheetBlock value: styleSheetBuilder.	self addStatement: (CssKeyframesRule named: aName enabling: styleSheetBuilder build)!

declare: aSubStyleSheetBlock forMediaMatching: aMediaQueryBlock	| styleSheetBuilder mediaQueryBuilder |	styleSheetBuilder := self class new.	aSubStyleSheetBlock value: styleSheetBuilder.	mediaQueryBuilder := CssMediaQueryRuleBuilder new.	aMediaQueryBlock cull: mediaQueryBuilder.	mediaQueryBuilder useStyleSheet: styleSheetBuilder build.	self addStatement: mediaQueryBuilder build!

declareFontFaceRuleWith: aDeclarationAction	| declarationBlock |	declarationBlock := CssDeclarationBlock new.	aDeclarationAction cull: declarationBlock.	self addStatement: (CssRuleSet selector: '@font-face' declarations: declarationBlock)!

declareKeyframeRuleSetAt: aPercentage with: aStyleSheetBlock 		| declarationBlock |		declarationBlock := CssDeclarationBlock new.	aStyleSheetBlock cull: declarationBlock.	self addStatement: (CssRuleSet selector: aPercentage declarations: declarationBlock comment: '')!

declareRuleSetFor: aSelectorBlock with: aDeclarationAction	self declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: ''!

declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: aComment	| selector declarationBlock |	selector := aSelectorBlock cull: CssUniversalSelector implicit.	declarationBlock := CssDeclarationBlock new.	aDeclarationAction cull: declarationBlock.	self addStatement: (CssRuleSet selector: selector declarations: declarationBlock comment: aComment)!

initialize	super initialize.	statements := OrderedCollection new! !
!CascadingStyleSheetBuilder categoriesFor: #addStatement:!private! !
!CascadingStyleSheetBuilder categoriesFor: #build!building!public! !
!CascadingStyleSheetBuilder categoriesFor: #comment:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declare:forKeyframesNamed:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declare:forMediaMatching:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declareFontFaceRuleWith:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declareKeyframeRuleSetAt:with:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declareRuleSetFor:with:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declareRuleSetFor:with:andComment:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #initialize!initialize/release!public! !

