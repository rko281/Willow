"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSExpression guid: (GUID fromString: '{7d2ff1d1-e3f3-4622-9d28-eaa819e7f936}')!
JSExpression comment: 'A JS expression enclosed in parenthesis'!
!JSExpression categoriesForClass!Boardwalk-Javascript! !
!JSExpression methodsFor!

javascriptContentOn: aStream	aStream nextPut: $(.	super javascriptContentOn: aStream.	aStream nextPut: $)! !
!JSExpression categoriesFor: #javascriptContentOn:!printing!public! !

