"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssComment
	instanceVariableNames: 'comment'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssComment guid: (GUID fromString: '{93d6f896-42e4-4a97-ac04-606c5eb0f745}')!
CssComment comment: 'A CssComment is a representation of a textual comment'!
!CssComment categoriesForClass!RenoirSt-Common! !
!CssComment methodsFor!

cssContentOn: aStream	comment notEmpty		ifFalse: [ ^ self ].	aStream nextPutAll: '/*'.	comment cssContentOn: aStream.	aStream		nextPutAll: '*/';		newLine!

initializeFor: aCommentText	comment  := aCommentText ! !
!CssComment categoriesFor: #cssContentOn:!Printing!public! !
!CssComment categoriesFor: #initializeFor:!initialize/release!public! !

!CssComment class methodsFor!

for: aCommentText	^self new initializeFor: aCommentText ! !
!CssComment class categoriesFor: #for:!Instance Creation!public! !

