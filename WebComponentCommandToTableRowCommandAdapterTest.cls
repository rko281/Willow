"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WebComponentCommandToTableRowCommandAdapterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentCommandToTableRowCommandAdapterTest guid: (GUID fromString: '{75516c7f-3040-4f88-afd7-759fab762895}')!
WebComponentCommandToTableRowCommandAdapterTest comment: 'A WebComponentCommandToTableRowCommandAdapterTest is a test class for testing the behavior of WebComponentCommandToTableRowCommandAdapter'!
!WebComponentCommandToTableRowCommandAdapterTest categoriesForClass!Willow-Tests-Frontend! !
!WebComponentCommandToTableRowCommandAdapterTest methodsFor!

testApplyToForOn	| html command |	command := [ :tableRow | tableRow addClass fadingNotification ] asTableRowCommand.	html := self		renderUsing: [ :canvas | 			| component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas ].	self assert: html equals: '<tr class="willow-fading-notification"></tr>'! !
!WebComponentCommandToTableRowCommandAdapterTest categoriesFor: #testApplyToForOn!public!tests/Applying! !

