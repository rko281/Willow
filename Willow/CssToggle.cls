﻿"Filed out from Dolphin Smalltalk 7"!

CssFunction subclass: #CssToggle
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssToggle guid: (GUID fromString: '{442411ad-0a76-4738-b1e4-60c55935d606}')!
CssToggle comment: 'A CssToggle represents a CSS expression allowing descendant elements to cycle over a list of values instead of inheriting the same value.'!
!CssToggle categoriesForClass!RenoirSt-Common! !
!CssToggle methodsFor!

cssFunctionParametersContentOn: aWriteStream

functionName

initializeCyclingOver: aCollection 
!CssToggle categoriesFor: #cssFunctionParametersContentOn:!private! !
!CssToggle categoriesFor: #functionName!private! !
!CssToggle categoriesFor: #initializeCyclingOver:!initialize/release!public! !

!CssToggle class methodsFor!

cyclingOver: aCollection
!CssToggle class categoriesFor: #cyclingOver:!Instance Creation!public! !
