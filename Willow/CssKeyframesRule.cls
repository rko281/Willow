"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssKeyframesRule
	instanceVariableNames: 'keyframeName styleSheet'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssKeyframesRule guid: (GUID fromString: '{56fc8591-073e-4bfe-bd0c-3e5193bd91b6}')!
CssKeyframesRule comment: ''!
!CssKeyframesRule categoriesForClass!RenoirSt-Core-Keyframes! !
!CssKeyframesRule methodsFor!

cssContentOn: aStream	aStream		nextPutAll: '@keyframes';		space.	keyframeName cssContentOn: aStream.	aStream		newLine;		nextPut: ${.	self cssStatementsContentOn: aStream.	aStream		newLine;		nextPut: $}!

cssStatementsContentOn: aStream	| tabStream |	tabStream := IndentOnNewLineWriteStream on: aStream.	tabStream newLine.	styleSheet cssContentOn: tabStream!

initializeNamed: aName enabling: aCascadingStyleSheet	keyframeName := aName.	styleSheet := aCascadingStyleSheet! !
!CssKeyframesRule categoriesFor: #cssContentOn:!Printing!public! !
!CssKeyframesRule categoriesFor: #cssStatementsContentOn:!Printing!public! !
!CssKeyframesRule categoriesFor: #initializeNamed:enabling:!initialization!public! !

!CssKeyframesRule class methodsFor!

named: aName enabling: aCascadingStyleSheet		^ self new initializeNamed: aName enabling: aCascadingStyleSheet! !
!CssKeyframesRule class categoriesFor: #named:enabling:!Instance Creation!public! !

