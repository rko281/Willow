"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssMathExpression
	instanceVariableNames: 'operands operators'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssMathExpression guid: (GUID fromString: '{9eeee084-d394-4b1e-a0e4-78e756198fb8}')!
CssMathExpression comment: 'A CssMathExpression represents a calc() function'!
!CssMathExpression categoriesForClass!RenoirSt-Core-Units! !
!CssMathExpression methodsFor!

- aCssValue	self addOperand: aCssValue andOperator: '-'!

* aCssValue	self addOperand: aCssValue andOperator: '*'!

/ aCssValue	self addOperand: aCssValue andOperator: '/'!

+ aCssValue	self addOperand: aCssValue andOperator: '+'!

addOperand: aCssValue andOperator: anOperator	operands add: aCssValue.	operators add: anOperator!

cssFunctionParametersContentOn: aWriteStream		"There's always one operand more than operations, the first one."	operands first cssContentOn: aWriteStream.	operands copyWithoutFirst		doWithIndex: [ :operand :index | 			aWriteStream space.			(operators at: index) cssContentOn: aWriteStream.			aWriteStream space.			operand cssContentOn: aWriteStream ]!

functionName	^'calc'!

initializeOn: aCssValue	operands := OrderedCollection with: aCssValue.	operators := OrderedCollection new! !
!CssMathExpression categoriesFor: #-!math functions!public! !
!CssMathExpression categoriesFor: #*!math functions!public! !
!CssMathExpression categoriesFor: #/!math functions!public! !
!CssMathExpression categoriesFor: #+!math functions!public! !
!CssMathExpression categoriesFor: #addOperand:andOperator:!private! !
!CssMathExpression categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssMathExpression categoriesFor: #functionName!private! !
!CssMathExpression categoriesFor: #initializeOn:!initialize/release!public! !

!CssMathExpression class methodsFor!

on: aCssValue	^self new initializeOn: aCssValue ! !
!CssMathExpression class categoriesFor: #on:!Instance Creation!public! !

