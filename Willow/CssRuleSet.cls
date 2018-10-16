﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssRuleSet
	instanceVariableNames: 'selector declarationBlock comment'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssRuleSet guid: (GUID fromString: '{4e2ba812-3f08-4513-a346-b1cf310f92b5}')!
CssRuleSet comment: 'A rule set (also called "rule") consists of a selector followed by a declaration block.'!
!CssRuleSet categoriesForClass!RenoirSt-Common! !
!CssRuleSet methodsFor!

cssContentOn: aStream

initializeSelector: aSelector declarations: aDeclarationBlock comment: aCommentText
!CssRuleSet categoriesFor: #cssContentOn:!Printing!public! !
!CssRuleSet categoriesFor: #initializeSelector:declarations:comment:!initialize/release!public! !

!CssRuleSet class methodsFor!

selector: aSelector declarations: aDeclarationBlock 

selector: aSelector declarations: aDeclarationBlock comment: aComment
!CssRuleSet class categoriesFor: #selector:declarations:!Instance Creation!public! !
!CssRuleSet class categoriesFor: #selector:declarations:comment:!Instance Creation!public! !
