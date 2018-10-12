"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #UrlRelativeToStyleSheet
	instanceVariableNames: 'url'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
UrlRelativeToStyleSheet guid: (GUID fromString: '{fbec7730-cd25-4d60-baf2-301a2aaa7555}')!
UrlRelativeToStyleSheet comment: 'I represent a URL that must be considered relative to the style sheet when used in a style sheet'!
!UrlRelativeToStyleSheet categoriesForClass!RenoirSt-HTML! !
!UrlRelativeToStyleSheet methodsFor!

cssContentOn: aStream	url cssContentRelativeToStyleSheetOn: aStream	!

initializeOn: aRelativeUrl	url := aRelativeUrl! !
!UrlRelativeToStyleSheet categoriesFor: #cssContentOn:!Printing!public! !
!UrlRelativeToStyleSheet categoriesFor: #initializeOn:!initialize/release!public! !

!UrlRelativeToStyleSheet class methodsFor!

on: aRelativeUrl	^self new initializeOn: aRelativeUrl ! !
!UrlRelativeToStyleSheet class categoriesFor: #on:!Instance Creation!public! !

