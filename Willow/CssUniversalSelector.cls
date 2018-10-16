﻿"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssUniversalSelector
	instanceVariableNames: 'representation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssUniversalSelector guid: (GUID fromString: '{79219797-d080-4532-9310-3177ab7edc8a}')!
CssUniversalSelector comment: 'The universal selector represents the qualified name of any element type. 
!CssUniversalSelector categoriesForClass!RenoirSt-Selectors! !
!CssUniversalSelector methodsFor!

cssContentOn: aStream

initializeRepresentedBy: aString 

isImplicitUniversal
!CssUniversalSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssUniversalSelector categoriesFor: #initializeRepresentedBy:!initialize/release!public! !
!CssUniversalSelector categoriesFor: #isImplicitUniversal!public!testing! !

!CssUniversalSelector class methodsFor!

explicit

implicit

representedBy: aString 
!CssUniversalSelector class categoriesFor: #explicit!Instance Creation!public! !
!CssUniversalSelector class categoriesFor: #implicit!Instance Creation!public! !
!CssUniversalSelector class categoriesFor: #representedBy:!private! !
