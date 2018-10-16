﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CascadingStyleSheetBuilder
	instanceVariableNames: 'statements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CascadingStyleSheetBuilder guid: (GUID fromString: '{63a862e2-8851-4b53-8902-6192b33cf032}')!
CascadingStyleSheetBuilder comment: 'A CascadingStyleSheetBuilder is a builder to help creting style sheets.'!
!CascadingStyleSheetBuilder categoriesForClass!RenoirSt-Common! !
!CascadingStyleSheetBuilder methodsFor!

addStatement: aCssStatement

build

comment: aCommentText

declare: aSubStyleSheetBlock forMediaMatching: aMediaQueryBlock

declareFontFaceRuleWith: aDeclarationAction

declareRuleSetFor: aSelectorBlock with: aDeclarationAction

declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: aComment

initialize
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
