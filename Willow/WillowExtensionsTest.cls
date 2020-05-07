"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WillowExtensionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WillowExtensionsTest guid: (GUID fromString: '{349e8b30-1c3b-4744-96bd-f88d66b734ed}')!
WillowExtensionsTest comment: 'I''m a test case for extensions of basic Willow objects'!
!WillowExtensionsTest categoriesForClass!Willow-Bootstrap-Tests-Frontend! !
!WillowExtensionsTest methodsFor!

testIsNullCommand	self		assert: CompositeComponentCommand empty isNullCommand;		assert: (CompositeComponentCommand empty + CompositeComponentCommand empty) isNullCommand;		deny: ((ComponentAttributeCommand named: 'rows' with: 2) + (ComponentAttributeCommand named: 'columns' with: 3)) isNullCommand;		deny: DeselectAllOptionsCommand new isNullCommand! !
!WillowExtensionsTest categoriesFor: #testIsNullCommand!public!tests! !

