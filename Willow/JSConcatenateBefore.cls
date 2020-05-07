"Filed out from Dolphin Smalltalk 7"!

JSStatement subclass: #JSConcatenateBefore
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSConcatenateBefore guid: (GUID fromString: '{c4f63686-a77c-4378-b3cf-dc85738cf9c5}')!
JSConcatenateBefore comment: ''!
!JSConcatenateBefore categoriesForClass!Willow-Core-WebInteraction! !
!JSConcatenateBefore methodsFor!

javascriptContentOn: aStream	aStream		javascript: self statement;		nextPut: $;.	super javascriptContentOn: aStream! !
!JSConcatenateBefore categoriesFor: #javascriptContentOn:!printing!public! !

