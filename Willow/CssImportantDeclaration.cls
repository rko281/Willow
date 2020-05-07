"Filed out from Dolphin Smalltalk 7"!

CssAbstractDeclaration subclass: #CssImportantDeclaration
	instanceVariableNames: 'declaration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssImportantDeclaration guid: (GUID fromString: '{cfee672e-cc8f-4595-8758-145ac8e6d2ba}')!
CssImportantDeclaration comment: 'A CssImportantDeclaration is declaration with an !!important modifier'!
!CssImportantDeclaration categoriesForClass!RenoirSt-Core-Common! !
!CssImportantDeclaration methodsFor!

cssContentEndingOn: aStream		aStream		space;		nextPutAll: '!!important'.	super cssContentEndingOn: aStream!

initializeOver: aCssDeclaration 		declaration := aCssDeclaration !

property	^declaration property!

value	^declaration value! !
!CssImportantDeclaration categoriesFor: #cssContentEndingOn:!private! !
!CssImportantDeclaration categoriesFor: #initializeOver:!initialize/release!public! !
!CssImportantDeclaration categoriesFor: #property!private! !
!CssImportantDeclaration categoriesFor: #value!private! !

!CssImportantDeclaration class methodsFor!

over: aCssDeclaration 		^self new initializeOver: aCssDeclaration ! !
!CssImportantDeclaration class categoriesFor: #over:!instance creation!public! !

