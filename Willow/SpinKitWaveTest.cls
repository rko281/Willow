"Filed out from Dolphin Smalltalk 7"!

BWRenderingTest subclass: #SpinKitWaveTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpinKitWaveTest guid: (GUID fromString: '{13ece25c-9713-4e71-9a20-9bdcf14ffa46}')!
SpinKitWaveTest comment: 'A SpinKitWaveTest is a test class for testing the behavior of SpinKitWave'!
!SpinKitWaveTest categoriesForClass!Willow-SpinKit-Tests! !
!SpinKitWaveTest methodsFor!

testRenderContentOn	| html |	html := self render: SpinKitWave new.	self		assert: html		equals:			'<div class="sk-wave"><div class="sk-wave-rect"></div><div class="sk-wave-rect"></div><div class="sk-wave-rect"></div><div class="sk-wave-rect"></div><div class="sk-wave-rect"></div></div>'! !
!SpinKitWaveTest categoriesFor: #testRenderContentOn!public!tests/rendering! !

