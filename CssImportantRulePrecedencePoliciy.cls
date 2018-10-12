"Filed out from Dolphin Smalltalk 7"!

CssRulePrecedencePolicy subclass: #CssImportantRulePrecedencePoliciy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssImportantRulePrecedencePoliciy guid: (GUID fromString: '{42f87a32-2e91-4166-b637-88f0517099ee}')!
CssImportantRulePrecedencePoliciy comment: 'A CssImportantRulePrecedencePoliciy is a policy indicating an important declaration.'!
!CssImportantRulePrecedencePoliciy categoriesForClass!RenoirSt-Common! !
!CssImportantRulePrecedencePoliciy methodsFor!

applyTo: aCssDeclaration 		^CssImportantDeclaration over: aCssDeclaration ! !
!CssImportantRulePrecedencePoliciy categoriesFor: #applyTo:!Applying!public! !

