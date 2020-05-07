"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitSwingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitSwingTest guid: (GUID fromString: '{f4cbed2b-8a16-407b-b89f-37582c497dee}')!
SpinKitSwingTest comment: 'A SpinKitSwingTest is a test class for testing the behavior of SpinKitSwing'!
!SpinKitSwingTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitSwingTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitSwing new.	self		assert: html		equals: '<div class="sk-swing"><div class="sk-swing-dot"></div><div class="sk-swing-dot"></div></div>'! !
!SpinKitSwingTest categoriesFor: #testRenderContentOn!public!test! !

