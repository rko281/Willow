﻿"Filed out from Dolphin Smalltalk 7"!

JSFunction subclass: #JSNamedFunction
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSNamedFunction guid: (GUID fromString: '{3ddade28-c3a5-4465-8b73-c2d5275611fa}')!
JSNamedFunction comment: 'I represent a named javascript function. I''m useful for defining function in libraries using the Seaside support.'!
!JSNamedFunction categoriesForClass!Boardwalk-Javascript! !
!JSNamedFunction methodsFor!

initializeNamed: aName

javascriptContentOn: aStream

javascriptFunctionBodyOn: aStream

javascriptFunctionDeclarationOn: aStream

name
!JSNamedFunction categoriesFor: #initializeNamed:!initialization!public! !
!JSNamedFunction categoriesFor: #javascriptContentOn:!printing!public! !
!JSNamedFunction categoriesFor: #javascriptFunctionBodyOn:!private! !
!JSNamedFunction categoriesFor: #javascriptFunctionDeclarationOn:!private! !
!JSNamedFunction categoriesFor: #name!accessing!public! !

!JSNamedFunction class methodsFor!

named: aName
!JSNamedFunction class categoriesFor: #named:!instance creation!public! !
