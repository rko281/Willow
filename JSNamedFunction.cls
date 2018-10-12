"Filed out from Dolphin Smalltalk 7"!

JSFunction subclass: #JSNamedFunction
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSNamedFunction guid: (GUID fromString: '{3ddade28-c3a5-4465-8b73-c2d5275611fa}')!
JSNamedFunction comment: 'I represent a named javascript function. I''m useful for defining function in libraries using the Seaside support.'!
!JSNamedFunction categoriesForClass!Boardwalk-Javascript! !
!JSNamedFunction methodsFor!

initializeNamed: aName	name := aName!

javascriptContentOn: aStream	self javascriptFunctionDeclarationOn: aStream.	self javascriptFunctionBodyOn: aStream!

javascriptFunctionBodyOn: aStream	aStream nextPut: ${.	statements isEmpty		ifFalse: [ statements allButLast				do: [ :each | 					aStream						javascript: each;						nextPut: $; ].			self return				ifTrue: [ aStream nextPutAll: 'return ' ].			aStream javascript: statements last ].	aStream nextPut: $}!

javascriptFunctionDeclarationOn: aStream	aStream		nextPutAll: 'function';		space;		nextPutAll: self name.	aStream nextPut: $(.	self arguments		do: [ :each | aStream nextPutAll: each ]		separatedBy: [ aStream nextPut: $, ].	aStream nextPut: $)!

name	^ name! !
!JSNamedFunction categoriesFor: #initializeNamed:!initialization!public! !
!JSNamedFunction categoriesFor: #javascriptContentOn:!printing!public! !
!JSNamedFunction categoriesFor: #javascriptFunctionBodyOn:!private! !
!JSNamedFunction categoriesFor: #javascriptFunctionDeclarationOn:!private! !
!JSNamedFunction categoriesFor: #name!accessing!public! !

!JSNamedFunction class methodsFor!

named: aName	^self new initializeNamed: aName! !
!JSNamedFunction class categoriesFor: #named:!instance creation!public! !

