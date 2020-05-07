"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitFoldTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitFoldTest guid: (GUID fromString: '{972cbe65-f493-4ad2-b008-a4122b3c1310}')!
SpinKitFoldTest comment: 'A SpinKitFoldTest is a test class for testing the behavior of SpinKitFold'!
!SpinKitFoldTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitFoldTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitFold new.	self		assert: html		equals:			'<div class="sk-fold"><div class="sk-fold-cube"></div><div class="sk-fold-cube"></div><div class="sk-fold-cube"></div><div class="sk-fold-cube"></div></div>'! !
!SpinKitFoldTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

