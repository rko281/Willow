"Filed out from Dolphin Smalltalk 7"!

Object subclass: #IdentifierAssigner
	instanceVariableNames: 'prefix identifierHolder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IdentifierAssigner guid: (GUID fromString: '{65665a59-2701-4b65-8483-0032f1f1e134}')!
IdentifierAssigner comment: 'I''m responsible of the generation and assignment of identifiers to the web view using me.'!
!IdentifierAssigner categoriesForClass!Boardwalk-WebApplication! !
!IdentifierAssigner methodsFor!

assignedIdentifier	^ identifierHolder		withContentDo: [ :id | id ]		ifUnused: [ :explanations | AssertionFailed signalAll: explanations ]!

identifyIn: aCanvas	^ identifierHolder		withContentDo: [ :identifier | identifier ]		ifUnused: [ | identifier |			identifier := '<1s>-<2s>' expandMacrosWith: prefix greaseString with: aCanvas nextId greaseString.			HTMLAsserter new assertIsValidIdentifier: identifier.			identifierHolder := Optional containing: identifier.			identifier ]!

initializePrefixedBy: aPrefix	prefix := aPrefix.	identifierHolder := Optional unusedBecause: 'The identifier was never assigned'!

withAssignedIdentifierDo: aMonadycBlock	identifierHolder withContentDo: aMonadycBlock ! !
!IdentifierAssigner categoriesFor: #assignedIdentifier!Accessing!public! !
!IdentifierAssigner categoriesFor: #identifyIn:!Configuring!public! !
!IdentifierAssigner categoriesFor: #initializePrefixedBy:!initialization!public! !
!IdentifierAssigner categoriesFor: #withAssignedIdentifierDo:!Accessing!public! !

!IdentifierAssigner class methodsFor!

prefixedBy: aPrefix	AssertionChecker enforce: [ aPrefix notEmpty ] because: 'The supplied prefix cannot be empty' raising: InstanceCreationFailed.	^ self new initializePrefixedBy: aPrefix! !
!IdentifierAssigner class categoriesFor: #prefixedBy:!Instance Creation!public! !

