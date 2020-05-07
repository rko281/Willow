"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitGridTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitGridTest guid: (GUID fromString: '{0fd5cc95-0572-4f89-94fa-6fc8fda4c255}')!
SpinKitGridTest comment: 'A SpinKitGridTest is a test class for testing the behavior of SpinKitGrid'!
!SpinKitGridTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitGridTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitGrid new.	self		assert: html		equals:			'<div class="sk-grid"><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div><div class="sk-grid-cube"></div></div>'! !
!SpinKitGridTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

