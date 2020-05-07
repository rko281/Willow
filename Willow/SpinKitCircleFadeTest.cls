"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitCircleFadeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitCircleFadeTest guid: (GUID fromString: '{1eb612d1-3706-4eae-9bc0-ab0bc77868ea}')!
SpinKitCircleFadeTest comment: 'A SpinKitCircleFadeTest is a test class for testing the behavior of SpinKitCircleFade'!
!SpinKitCircleFadeTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitCircleFadeTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitCircleFade new.	self		assert: html		equals:			'<div class="sk-circle-fade"><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div><div class="sk-circle-fade-dot"></div></div>'! !
!SpinKitCircleFadeTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

