"Filed out from Dolphin Smalltalk 7"!

JSDecoration subclass: #JSNonInlinedIfThenElse
	instanceVariableNames: 'trueStatement falseStatementOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSNonInlinedIfThenElse guid: (GUID fromString: '{e0b743af-7de3-46f4-add6-26523d433e94}')!
JSNonInlinedIfThenElse comment: 'Implements a Javascript if (not th inlined conditional operator).'!
!JSNonInlinedIfThenElse categoriesForClass!Boardwalk-Javascript! !
!JSNonInlinedIfThenElse methodsFor!

falseStatement: anStatement	falseStatementOptional := Optional containing: anStatement!

falseStatementContentOn: aStream	falseStatementOptional		withContentDo: [ :falseStatement | 			aStream				space;				nextPutAll: 'else';				space;				nextPut: ${;				javascript: falseStatement;				nextPut: $} ]!

initialize	super initialize.	falseStatementOptional := Optional unused!

javascriptContentOn: aStream	aStream		nextPutAll: 'if';		nextPut: $(.	super javascriptContentOn: aStream.	aStream		nextPut: $);		nextPut: ${;		javascript: trueStatement;		nextPut: $}.	self falseStatementContentOn: aStream!

trueStatement: anStatement	trueStatement := anStatement ! !
!JSNonInlinedIfThenElse categoriesFor: #falseStatement:!accessing!public! !
!JSNonInlinedIfThenElse categoriesFor: #falseStatementContentOn:!private! !
!JSNonInlinedIfThenElse categoriesFor: #initialize!initialization!public! !
!JSNonInlinedIfThenElse categoriesFor: #javascriptContentOn:!printing!public! !
!JSNonInlinedIfThenElse categoriesFor: #trueStatement:!accessing!public! !

