"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CascadingStyleSheetBuilder
	instanceVariableNames: 'statements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CascadingStyleSheetBuilder guid: (GUID fromString: '{63a862e2-8851-4b53-8902-6192b33cf032}')!
CascadingStyleSheetBuilder comment: 'A CascadingStyleSheetBuilder is a builder to help creting style sheets.'!
!CascadingStyleSheetBuilder categoriesForClass!RenoirSt-Common! !
!CascadingStyleSheetBuilder methodsFor!

addStatement: aCssStatement	"aCssStatement can be a Rule Set or some At-Rule"	statements add: aCssStatement!

build		^CascadingStyleSheet withAll: statements !

comment: aCommentText	self addStatement: (CssComment for: aCommentText)!

declare: aSubStyleSheetBlock forMediaMatching: aMediaQueryBlock	| styleSheetBuilder mediaQueryBuilder |	styleSheetBuilder := self class new.	aSubStyleSheetBlock value: styleSheetBuilder.	mediaQueryBuilder := CssMediaQueryRuleBuilder new.	aMediaQueryBlock cull: mediaQueryBuilder.	mediaQueryBuilder useStyleSheet: styleSheetBuilder build.	self addStatement: mediaQueryBuilder build!

declareFontFaceRuleWith: aDeclarationAction	| declarationBlock |	declarationBlock := CssDeclarationBlock new.	aDeclarationAction cull: declarationBlock.	self addStatement: (CssRuleSet selector: '@font-face' declarations: declarationBlock)!

declareRuleSetFor: aSelectorBlock with: aDeclarationAction	self declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: ''!

declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: aComment	| selector declarationBlock |	selector := aSelectorBlock cull: CssUniversalSelector implicit.	declarationBlock := CssDeclarationBlock new.	aDeclarationAction cull: declarationBlock.	self addStatement: (CssRuleSet selector: selector declarations: declarationBlock comment: aComment)!

initialize	super initialize.	statements := OrderedCollection new! !
!CascadingStyleSheetBuilder categoriesFor: #addStatement:!private! !
!CascadingStyleSheetBuilder categoriesFor: #build!building!public! !
!CascadingStyleSheetBuilder categoriesFor: #comment:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declare:forMediaMatching:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declareFontFaceRuleWith:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declareRuleSetFor:with:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #declareRuleSetFor:with:andComment:!Configuring!public! !
!CascadingStyleSheetBuilder categoriesFor: #initialize!initialize/release!public! !

!CascadingStyleSheetBuilder class methodsFor!

new

	^super new initialize! !
!CascadingStyleSheetBuilder class categoriesFor: #new!public! !

