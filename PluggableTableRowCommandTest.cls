"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #PluggableTableRowCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PluggableTableRowCommandTest guid: (GUID fromString: '{04b14792-8351-4b49-86e2-37e5654dcba8}')!
PluggableTableRowCommandTest comment: 'A PluggableTableRowCommandTest is a test class for testing the behavior of PluggableTableRowCommand'!
!PluggableTableRowCommandTest categoriesForClass!Willow-Tests-Frontend! !
!PluggableTableRowCommandTest methodsFor!

testApplyToForOn	| html command |	command := PluggableTableRowCommand toExecute: [:row :item :canvas | row id: item printString].	html :=		self renderUsing: [:canvas | | component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas].	self assert: html equals: '<tr id="33"></tr>'! !
!PluggableTableRowCommandTest categoriesFor: #testApplyToForOn!public!tests/Applying! !

