"Filed out from Dolphin Smalltalk 7"!

TriggeringPolicy subclass: #FunctionEvaluationTrigger
	instanceVariableNames: 'functionSelector argumentNames'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FunctionEvaluationTrigger guid: (GUID fromString: '{ec94d0c9-7130-4a2d-a753-718ae99935fc}')!
FunctionEvaluationTrigger comment: ''!
!FunctionEvaluationTrigger categoriesForClass!Willow-WebInteraction! !
!FunctionEvaluationTrigger methodsFor!

apply: anAsynchronousCall to: aComponent on: aCanvas	aComponent perform: functionSelector with: (anAsynchronousCall asFunction: argumentNames)!

initializeSending: aFunctionSelector parameterizedBy: anArgumentNameCollection	functionSelector := aFunctionSelector.	argumentNames := anArgumentNameCollection! !
!FunctionEvaluationTrigger categoriesFor: #apply:to:on:!evaluating!public! !
!FunctionEvaluationTrigger categoriesFor: #initializeSending:parameterizedBy:!initialization!public! !

!FunctionEvaluationTrigger class methodsFor!

sending: aFunctionSelector parameterizedBy: anArgumentNameCollection	^ self new initializeSending: aFunctionSelector parameterizedBy: anArgumentNameCollection! !
!FunctionEvaluationTrigger class categoriesFor: #sending:parameterizedBy:!instance creation!public! !

