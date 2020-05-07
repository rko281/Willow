"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitWanderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitWanderTest guid: (GUID fromString: '{db39ce71-c74f-4d8e-a7bf-4b6e887ad4a7}')!
SpinKitWanderTest comment: 'A SpinKitWanderTest is a test class for testing the behavior of SpinKitWander'!
!SpinKitWanderTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitWanderTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitWander new.	self		assert: html		equals:			'<div class="sk-wander"><div class="sk-wander-cube"></div><div class="sk-wander-cube"></div><div class="sk-wander-cube"></div></div>'! !
!SpinKitWanderTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

