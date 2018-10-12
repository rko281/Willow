"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WillowSessionTest
	instanceVariableNames: 'componentSupplier'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WillowSessionTest guid: (GUID fromString: '{3755ad92-e649-4159-8617-d0e600265434}')!
WillowSessionTest comment: 'A WillowSessionTest is a test class for testing the behavior of WillowSession'!
!WillowSessionTest categoriesForClass!Willow-Tests-Applications! !
!WillowSessionTest methodsFor!

componentSupplierForApplication	^ componentSupplier!

setUp	super setUp.	componentSupplier := Html5ComponentSupplier new!

testStartUpApplicationContextFor	| session |	session := WillowSession new.	session startUpApplicationContextFor: self.	self assert: session componentSupplier equals: componentSupplier! !
!WillowSessionTest categoriesFor: #componentSupplierForApplication!accessing!public! !
!WillowSessionTest categoriesFor: #setUp!initialization!public! !
!WillowSessionTest categoriesFor: #testStartUpApplicationContextFor!public!tests! !

