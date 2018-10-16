﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #IdentifierAssigner
	instanceVariableNames: 'prefix identifierHolder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IdentifierAssigner guid: (GUID fromString: '{65665a59-2701-4b65-8483-0032f1f1e134}')!
IdentifierAssigner comment: 'I''m responsible of the generation and assignment of identifiers to the web view using me.'!
!IdentifierAssigner categoriesForClass!Boardwalk-WebApplication! !
!IdentifierAssigner methodsFor!

assignedIdentifier

identifyIn: aCanvas

initializePrefixedBy: aPrefix

withAssignedIdentifierDo: aMonadycBlock
!IdentifierAssigner categoriesFor: #assignedIdentifier!Accessing!public! !
!IdentifierAssigner categoriesFor: #identifyIn:!Configuring!public! !
!IdentifierAssigner categoriesFor: #initializePrefixedBy:!initialization!public! !
!IdentifierAssigner categoriesFor: #withAssignedIdentifierDo:!Accessing!public! !

!IdentifierAssigner class methodsFor!

prefixedBy: aPrefix
!IdentifierAssigner class categoriesFor: #prefixedBy:!Instance Creation!public! !
