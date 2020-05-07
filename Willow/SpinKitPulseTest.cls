"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitPulseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitPulseTest guid: (GUID fromString: '{f0d8cb11-275d-4e32-977b-ef111791fbcb}')!
SpinKitPulseTest comment: 'A SpinKitPulseTest is a test class for testing the behavior of SpinKitPulse'!
!SpinKitPulseTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitPulseTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitPulse new.	self assert: html equals: '<div class="sk-pulse"></div>'! !
!SpinKitPulseTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

