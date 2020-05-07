"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitCircleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitCircleTest guid: (GUID fromString: '{5bd8ff44-ce3d-4fd8-a23f-96b76399e2e8}')!
SpinKitCircleTest comment: 'A SpinKitCircleTest is a test class for testing the behavior of SpinKitCircle'!
!SpinKitCircleTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitCircleTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitCircle new.	self		assert: html		equals:			'<div class="sk-circle"><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div><div class="sk-circle-dot"></div></div>'! !
!SpinKitCircleTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

