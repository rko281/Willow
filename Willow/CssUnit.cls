﻿"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssUnit
	instanceVariableNames: 'identifier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssUnit guid: (GUID fromString: '{4e5a0f9c-a38c-48d9-ba5b-3dd2d6d575a6}')!
CssUnit comment: 'There are two types of length units: relative and absolute. Relative length units specify a length relative to another length property. Style sheets that use relative units will more easily scale from one medium to another (e.g., from a computer display to a laser printer).'!
!CssUnit categoriesForClass!RenoirSt-Units! !
!CssUnit methodsFor!

cssContentOn: aStream 

initializeIdentifiedBy: anIdentifier
!CssUnit categoriesFor: #cssContentOn:!Printing!public! !
!CssUnit categoriesFor: #initializeIdentifiedBy:!initialize/release!public! !

!CssUnit class methodsFor!

assertNotEmpty: aString

identifiedBy: anIdentifier
!CssUnit class categoriesFor: #assertNotEmpty:!Preconditions!public! !
!CssUnit class categoriesFor: #identifiedBy:!Instance Creation!public! !
