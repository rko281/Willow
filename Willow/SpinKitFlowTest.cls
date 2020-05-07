"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitFlowTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitFlowTest guid: (GUID fromString: '{ce5181c1-07c8-4ba7-9a5b-48ae62349458}')!
SpinKitFlowTest comment: 'A SpinKitFlowTest is a test class for testing the behavior of SpinKitFlow'!
!SpinKitFlowTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitFlowTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitFlow new.	self		assert: html		equals:			'<div class="sk-flow"><div class="sk-flow-dot"></div><div class="sk-flow-dot"></div><div class="sk-flow-dot"></div></div>'! !
!SpinKitFlowTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

