"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CascadingStyleSheet
	instanceVariableNames: 'statements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CascadingStyleSheet guid: (GUID fromString: '{6566413d-2e4a-4b70-b146-0e46e9d9ab3f}')!
CascadingStyleSheet comment: 'A CSS style sheet, for any level of CSS, consists of a list of statements. There are two kinds of statements: at-rules and rule sets. There may be white space around the statements.'!
!CascadingStyleSheet categoriesForClass!RenoirSt-Core-Common! !
!CascadingStyleSheet methodsFor!

cssContentOn: aStream		statements		do: [ :statement | statement cssContentOn: aStream ]		separatedBy: [ 			aStream				newLine;				newLine ]!

initializeWithAll: anStatementCollection	statements := anStatementCollection! !
!CascadingStyleSheet categoriesFor: #cssContentOn:!Printing!public! !
!CascadingStyleSheet categoriesFor: #initializeWithAll:!initialize/release!public! !

!CascadingStyleSheet class methodsFor!

withAll: anStatementCollection		^self new initializeWithAll: anStatementCollection! !
!CascadingStyleSheet class categoriesFor: #withAll:!Instance Creation!public! !

