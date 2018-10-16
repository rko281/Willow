"Filed out from Dolphin Smalltalk 7"!

CssObject subclass: #CssColorStop
	instanceVariableNames: 'color stop'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssColorStop guid: (GUID fromString: '{495aa075-4ae3-48bb-a85f-8133f3fab2cc}')!
CssColorStop comment: 'A CssColorStop determines an specific position for a color in the gradient'!
!CssColorStop categoriesForClass!RenoirSt-Colors! !
!CssColorStop methodsFor!

cssContentOn: aWriteStream 		color cssContentOn: aWriteStream.	aWriteStream space.	stop cssContentOn: aWriteStream !

initializeFor: aCssColor at: aLenght	color := aCssColor.	stop := aLenght! !
!CssColorStop categoriesFor: #cssContentOn:!Printing!public! !
!CssColorStop categoriesFor: #initializeFor:at:!initialize/release!public! !

!CssColorStop class methodsFor!

for: aCssColor at: aLenght	^ self new initializeFor: (self lookupColor: aCssColor) at: aLenght! !
!CssColorStop class categoriesFor: #for:at:!Instance Creation!public! !

