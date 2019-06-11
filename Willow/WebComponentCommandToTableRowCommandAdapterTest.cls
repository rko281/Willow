"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WebComponentCommandToTableRowCommandAdapterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentCommandToTableRowCommandAdapterTest guid: (GUID fromString: '{aa2a633e-0350-47ee-b715-4f095c491e18}')!
WebComponentCommandToTableRowCommandAdapterTest comment: 'A WebComponentCommandToTableRowCommandAdapterTest is a test class for testing the behavior of WebComponentCommandToTableRowCommandAdapter'!
!WebComponentCommandToTableRowCommandAdapterTest categoriesForClass!Willow-Tests-Frontend! !
!WebComponentCommandToTableRowCommandAdapterTest methodsFor!

testApplyToForOn	| html command |	command := [ :tableRow | tableRow addClass fadingNotification ] asTableRowCommand.	html := self		renderUsing: [ :canvas | 			| component |			component := canvas tableRow.			command applyTo: component for: 33 on: canvas ].	self assert: html equals: '<tr class="willow-fading-notification"></tr>'! !
!WebComponentCommandToTableRowCommandAdapterTest categoriesFor: #testApplyToForOn!public!tests/Applying! !

