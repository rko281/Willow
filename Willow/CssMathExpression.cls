﻿"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssMathExpression
	instanceVariableNames: 'operands operators'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssMathExpression guid: (GUID fromString: '{9eeee084-d394-4b1e-a0e4-78e756198fb8}')!
CssMathExpression comment: 'A CssMathExpression represents a calc() function'!
!CssMathExpression categoriesForClass!RenoirSt-Units! !
!CssMathExpression methodsFor!

- aCssValue

* aCssValue

/ aCssValue

+ aCssValue

addOperand: aCssValue andOperator: anOperator

cssFunctionParametersContentOn: aWriteStream

functionName

initializeOn: aCssValue
!CssMathExpression categoriesFor: #-!math functions!public! !
!CssMathExpression categoriesFor: #*!math functions!public! !
!CssMathExpression categoriesFor: #/!math functions!public! !
!CssMathExpression categoriesFor: #+!math functions!public! !
!CssMathExpression categoriesFor: #addOperand:andOperator:!private! !
!CssMathExpression categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssMathExpression categoriesFor: #functionName!private! !
!CssMathExpression categoriesFor: #initializeOn:!initialize/release!public! !

!CssMathExpression class methodsFor!

on: aCssValue
!CssMathExpression class categoriesFor: #on:!Instance Creation!public! !
