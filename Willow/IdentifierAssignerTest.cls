"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #IdentifierAssignerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IdentifierAssignerTest guid: (GUID fromString: '{6d4db2ae-addf-46ca-a4ac-ae0f2a364543}')!
IdentifierAssignerTest comment: ''!
!IdentifierAssignerTest categoriesForClass!Boardwalk-Tests-WebApplication! !
!IdentifierAssignerTest methodsFor!

nextId	^ '123'!

testAssignedIdentifier	| assigner |	assigner := IdentifierAssigner prefixedBy: 'table'.	assigner identifyIn: self.	self assert: assigner assignedIdentifier equals: 'table-123'!

testAssignedIdentifierWhenNotAssigned	| assigner |	assigner := IdentifierAssigner prefixedBy: 'table'.	self		should: [ assigner assignedIdentifier ]		raise: AssertionFailed		withMessageText: 'The identifier was never assigned'!

testPrefixCantBeEmpty	self		should: [ IdentifierAssigner prefixedBy: '' ]		raise: InstanceCreationFailed		withMessageText: 'The supplied prefix cannot be empty'!

testWithAssignedIdentifierDo	| assigner |	assigner := IdentifierAssigner prefixedBy: 'table'.	assigner identifyIn: self.	assigner withAssignedIdentifierDo: [ :id | self assert: id equals: 'table-123' ]!

testWithAssignedIdentifierDoWhenNotAssigned	| assigner |	assigner := IdentifierAssigner prefixedBy: 'table'.	assigner withAssignedIdentifierDo: [ :id | self fail ]! !
!IdentifierAssignerTest categoriesFor: #nextId!public!test support! !
!IdentifierAssignerTest categoriesFor: #testAssignedIdentifier!public!test! !
!IdentifierAssignerTest categoriesFor: #testAssignedIdentifierWhenNotAssigned!public!test! !
!IdentifierAssignerTest categoriesFor: #testPrefixCantBeEmpty!public!test! !
!IdentifierAssignerTest categoriesFor: #testWithAssignedIdentifierDo!public!test! !
!IdentifierAssignerTest categoriesFor: #testWithAssignedIdentifierDoWhenNotAssigned!public!test! !

