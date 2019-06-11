"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #PluggableTableRowCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PluggableTableRowCommandTest guid: (GUID fromString: '{2086b143-f049-4fc5-a6d9-457b8f65d778}')!
PluggableTableRowCommandTest comment: 'A PluggableTableRowCommandTest is a test class for testing the behavior of PluggableTableRowCommand'!
!PluggableTableRowCommandTest categoriesForClass!Willow-Tests-Frontend! !
!PluggableTableRowCommandTest methodsFor!

testApplyToForOn	| html command |	command := PluggableTableRowCommand toExecute: [:row :item :canvas | row id: item printString].	html :=		self renderUsing: [:canvas | | component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas].	self assert: html equals: '<tr id="33"></tr>'! !
!PluggableTableRowCommandTest categoriesFor: #testApplyToForOn!public!tests/Applying! !

