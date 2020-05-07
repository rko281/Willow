"Filed out from Dolphin Smalltalk 7"!

CssSelector subclass: #CssUniversalSelector
	instanceVariableNames: 'representation'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssUniversalSelector guid: (GUID fromString: '{79219797-d080-4532-9310-3177ab7edc8a}')!
CssUniversalSelector comment: 'The universal selector represents the qualified name of any element type. It represents any single element in the document tree in any namespace (including those without a namespace) if no default namespace has been specified for selectors.'!
!CssUniversalSelector categoriesForClass!RenoirSt-Core-Selectors! !
!CssUniversalSelector methodsFor!

cssContentOn: aStream	aStream nextPutAll: representation !

initializeRepresentedBy: aString 		representation := aString!

isImplicitUniversal	^ representation isEmpty! !
!CssUniversalSelector categoriesFor: #cssContentOn:!Printing!public! !
!CssUniversalSelector categoriesFor: #initializeRepresentedBy:!initialize/release!public! !
!CssUniversalSelector categoriesFor: #isImplicitUniversal!public!testing! !

!CssUniversalSelector class methodsFor!

explicit		^self representedBy: '*'!

implicit		^self representedBy: ''!

representedBy: aString 		^self new initializeRepresentedBy: aString	! !
!CssUniversalSelector class categoriesFor: #explicit!Instance Creation!public! !
!CssUniversalSelector class categoriesFor: #implicit!Instance Creation!public! !
!CssUniversalSelector class categoriesFor: #representedBy:!private! !

