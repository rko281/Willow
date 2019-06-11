"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #WebComponentInteractionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentInteractionTest guid: (GUID fromString: '{639e1e6f-6141-4b26-b317-7ae16b201d6c}')!
WebComponentInteractionTest comment: ''!
!WebComponentInteractionTest categoriesForClass!Willow-Tests-WebInteraction! !
!WebComponentInteractionTest methodsFor!

testNeverTriggered	| interaction html |	interaction := WebComponentInteraction neverTriggered.	html := self		renderUsing: [ :canvas | 			| component |			component := canvas textInput.			interaction applyTo: component on: canvas ].	self assert: html equals: '<input type="text"/>'! !
!WebComponentInteractionTest categoriesFor: #testNeverTriggered!public!tests! !

