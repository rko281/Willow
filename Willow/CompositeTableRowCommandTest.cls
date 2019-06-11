"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #CompositeTableRowCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeTableRowCommandTest guid: (GUID fromString: '{5915301d-5316-4f50-ae62-8c8d39a914d1}')!
CompositeTableRowCommandTest comment: ''!
!CompositeTableRowCommandTest categoriesForClass!Willow-Tests-Frontend! !
!CompositeTableRowCommandTest methodsFor!

testApplyToForOn	| html command |		command := 		CompositeTableRowCommand applyingAll: (			Array with:				(PluggableTableRowCommand toExecute: [:row :item :canvas | row id: item printString])).	html :=		self renderUsing: [ :canvas | | component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas ].		self assert: html equals: '<tr id="33"></tr>'!

testEmpty	| html command |		command := CompositeTableRowCommand empty.	html :=		self renderUsing: [ :canvas | | component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas ].		self assert: html equals: '<tr></tr>'!

testShortcutCreation	| html command |		command := 		(PluggableTableRowCommand toExecute: [:row :item :canvas | row id: item printString]) +						(PluggableTableRowCommand toExecute: [:row :item :canvas | row class: 'secret']).	html :=		self renderUsing: [ :canvas | | component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas ].		self assert: html equals: '<tr id="33" class="secret"></tr>'!

testShortcutCreationWithEmptyCompositeCommand	| html command |		command := 		CompositeTableRowCommand empty +			(PluggableTableRowCommand toExecute: [:row :item :canvas | row id: item printString]).	html :=		self renderUsing: [ :canvas | | component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas ].		self assert: html equals: '<tr id="33"></tr>'! !
!CompositeTableRowCommandTest categoriesFor: #testApplyToForOn!public!tests! !
!CompositeTableRowCommandTest categoriesFor: #testEmpty!public!tests! !
!CompositeTableRowCommandTest categoriesFor: #testShortcutCreation!public!tests! !
!CompositeTableRowCommandTest categoriesFor: #testShortcutCreationWithEmptyCompositeCommand!public!tests! !

