"Filed out from Dolphin Smalltalk 7"!

WARenderingTest subclass: #WebComponentInteractionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WebComponentInteractionTest guid: (GUID fromString: '{59ae09a8-0c61-46a1-8010-44ffaed86ee4}')!
WebComponentInteractionTest comment: ''!
!WebComponentInteractionTest categoriesForClass!Willow-Tests-WebInteraction! !
!WebComponentInteractionTest methodsFor!

testNeverTriggered	| interaction html |	interaction := WebComponentInteraction neverTriggered.	html := self		renderUsing: [ :canvas | 			| component |			component := canvas textInput.			interaction applyTo: component on: canvas ].	self assert: html equals: '<input type="text"/>'! !
!WebComponentInteractionTest categoriesFor: #testNeverTriggered!public!tests! !

