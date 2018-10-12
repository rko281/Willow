"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssRuleSet
	instanceVariableNames: 'selector declarationBlock comment'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRuleSet guid: (GUID fromString: '{4e2ba812-3f08-4513-a346-b1cf310f92b5}')!
CssRuleSet comment: 'A rule set (also called "rule") consists of a selector followed by a declaration block.'!
!CssRuleSet categoriesForClass!RenoirSt-Common! !
!CssRuleSet methodsFor!

cssContentOn: aStream	comment cssContentOn: aStream.	selector cssContentOn: aStream.	aStream newLine.	declarationBlock cssContentOn: aStream!

initializeSelector: aSelector declarations: aDeclarationBlock comment: aCommentText		selector := aSelector.	declarationBlock := aDeclarationBlock.	comment := CssComment for: aCommentText! !
!CssRuleSet categoriesFor: #cssContentOn:!Printing!public! !
!CssRuleSet categoriesFor: #initializeSelector:declarations:comment:!initialize/release!public! !

!CssRuleSet class methodsFor!

selector: aSelector declarations: aDeclarationBlock 		^self selector: aSelector declarations: aDeclarationBlock comment: ''!

selector: aSelector declarations: aDeclarationBlock comment: aComment		^self new initializeSelector: aSelector declarations: aDeclarationBlock comment: aComment! !
!CssRuleSet class categoriesFor: #selector:declarations:!Instance Creation!public! !
!CssRuleSet class categoriesFor: #selector:declarations:comment:!Instance Creation!public! !

