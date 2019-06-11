"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #ComponentRequiredCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentRequiredCommandTest guid: (GUID fromString: '{67ee85c5-b9ec-470f-80d5-ffaccc425ea2}')!
ComponentRequiredCommandTest comment: ''!
!ComponentRequiredCommandTest categoriesForClass!Willow-Tests-Frontend! !
!ComponentRequiredCommandTest methodsFor!

testApplyToOn	| html |	html := self		apply: ComponentRequiredCommand new		toComponentDefinedBy: [ :canvas | canvas textInput ].	self assert: html equals: '<input required type="text"/>'! !
!ComponentRequiredCommandTest categoriesFor: #testApplyToOn!public!tests/processing! !

