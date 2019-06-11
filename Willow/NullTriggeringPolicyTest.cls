"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #NullTriggeringPolicyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NullTriggeringPolicyTest guid: (GUID fromString: '{bbeaf2fc-1bd0-40d2-86cb-a6529a8c5966}')!
NullTriggeringPolicyTest comment: 'A NullTriggeringPolicyTest is a test class for testing the behavior of NullTriggeringPolicy'!
!NullTriggeringPolicyTest categoriesForClass!Willow-Tests-WebInteraction! !
!NullTriggeringPolicyTest methodsFor!

testApplyToOn	self		renderUsing: [ :canvas | 			| component ajax |			ajax := canvas jQuery ajax.			component := canvas textInput.			self				should: [ NullTriggeringPolicy new apply: ajax to: component on: canvas ]				raise: Error				withExceptionDo: [ :error | 					self						assert: error messageText						equals: 'Trying to generate interactive script for component declared as non-interactive' ] ]! !
!NullTriggeringPolicyTest categoriesFor: #testApplyToOn!public!tests/evaluating! !

