"Filed out from Dolphin Smalltalk 7"!

Object subclass: #IndentOnNewLineWriteStream
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IndentOnNewLineWriteStream guid: (GUID fromString: '{6886deaf-070e-4662-b7b4-c785b24203f6}')!
IndentOnNewLineWriteStream comment: 'A IndentOnNewLineWriteStream is a write stream that adds automatically a tab after a new line.'!
!IndentOnNewLineWriteStream categoriesForClass!RenoirSt-Common! !
!IndentOnNewLineWriteStream methodsFor!

initializeOn: aWriteStream 		stream := aWriteStream !

newLine		stream		newLine;		tab!

nextPut: aCharacter 		stream nextPut: aCharacter !

nextPutAll: aString 		stream nextPutAll: aString !

space		stream space!

tab		stream tab! !
!IndentOnNewLineWriteStream categoriesFor: #initializeOn:!initialize/release!public! !
!IndentOnNewLineWriteStream categoriesFor: #newLine!public!Stream/API! !
!IndentOnNewLineWriteStream categoriesFor: #nextPut:!public!Stream/API! !
!IndentOnNewLineWriteStream categoriesFor: #nextPutAll:!public!Stream/API! !
!IndentOnNewLineWriteStream categoriesFor: #space!public!Stream/API! !
!IndentOnNewLineWriteStream categoriesFor: #tab!public!Stream/API! !

!IndentOnNewLineWriteStream class methodsFor!

on: aWriteStream 		^self new initializeOn: aWriteStream ! !
!IndentOnNewLineWriteStream class categoriesFor: #on:!Instance Creation!public! !

