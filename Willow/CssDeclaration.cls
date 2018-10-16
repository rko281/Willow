﻿"Filed out from Dolphin Smalltalk 7"!

CssAbstractDeclaration subclass: #CssDeclaration
	instanceVariableNames: 'property value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CssDeclaration guid: (GUID fromString: '{8168dc70-99cf-4e8a-ae4b-56cd0fed9ef1}')!
CssDeclaration comment: 'A declaration is either empty or consists of a property name, followed by a colon (:), followed by a value. Around each of these there may be white space.
!CssDeclaration categoriesForClass!RenoirSt-Common! !
!CssDeclaration methodsFor!

initializeProperty: aPropertyName value: aValue

property

value
!CssDeclaration categoriesFor: #initializeProperty:value:!initialize/release!public! !
!CssDeclaration categoriesFor: #property!private! !
!CssDeclaration categoriesFor: #value!private! !

!CssDeclaration class methodsFor!

property: aPropertyName value: aValue
!CssDeclaration class categoriesFor: #property:value:!Instance Creation!public! !
