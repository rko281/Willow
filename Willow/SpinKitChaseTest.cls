"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitChaseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitChaseTest guid: (GUID fromString: '{f4c9ad18-689a-4c6a-b4fb-f34d8e7dae8e}')!
SpinKitChaseTest comment: 'A SpinKitChaseTest is a test class for testing the behavior of SpinKitChase'!
!SpinKitChaseTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitChaseTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitChase new.	self assert: html equals: '<div class="sk-chase"><div class="sk-chase-dot"></div><div class="sk-chase-dot"></div><div class="sk-chase-dot"></div><div class="sk-chase-dot"></div><div class="sk-chase-dot"></div><div class="sk-chase-dot"></div></div>'! !
!SpinKitChaseTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

