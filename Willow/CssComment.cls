"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssComment
	instanceVariableNames: 'comment'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssComment guid: (GUID fromString: '{49040c28-df80-433a-92d6-c00f3ff49ece}')!
CssComment comment: 'A CssComment is a representation of a textual comment'!
!CssComment categoriesForClass!RenoirSt-Core-Common! !
!CssComment methodsFor!

cssContentOn: aStream	[ aStream nextPutAll: '/*'.	comment cssContentOn: aStream.	aStream		nextPutAll: '*/';		newLine	] unless: comment isEmpty!

initializeFor: aCommentText	comment  := aCommentText ! !
!CssComment categoriesFor: #cssContentOn:!Printing!public! !
!CssComment categoriesFor: #initializeFor:!initialize/release!public! !

!CssComment class methodsFor!

for: aCommentText	^self new initializeFor: aCommentText ! !
!CssComment class categoriesFor: #for:!Instance Creation!public! !

