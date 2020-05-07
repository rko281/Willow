"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitBounceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitBounceTest guid: (GUID fromString: '{47369c71-b3d0-4f60-8e83-6690960454af}')!
SpinKitBounceTest comment: 'A SpinKitBounceTest is a test class for testing the behavior of SpinKitBounce'!
!SpinKitBounceTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitBounceTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitBounce new.	self		assert: html		equals: '<div class="sk-bounce"><div class="sk-bounce-dot"></div><div class="sk-bounce-dot"></div></div>'! !
!SpinKitBounceTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

