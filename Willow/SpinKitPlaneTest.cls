"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitPlaneTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitPlaneTest guid: (GUID fromString: '{1235b0c2-3532-4321-a97d-5273c90d5cc6}')!
SpinKitPlaneTest comment: 'A SpinKitPlaneTest is a test class for testing the behavior of SpinKitPlane'!
!SpinKitPlaneTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitPlaneTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitPlane new.	self assert: html equals: '<div class="sk-plane"></div>'! !
!SpinKitPlaneTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

