﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #AssertionCheckerBuilder
	instanceVariableNames: 'asserter failurePolicyFactory errorToSignal'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AssertionCheckerBuilder guid: (GUID fromString: '{d4b05024-8c56-4f91-a701-2b2b06d68ea6}')!
AssertionCheckerBuilder comment: 'I''m a builder for  Assertion Checkers.'!
!AssertionCheckerBuilder categoriesForClass!Buoy-Assertions! !
!AssertionCheckerBuilder methodsFor!

build

buildAndCheck

checking: aMonadycBlock

failFast

initialize

raising: anErrorToSignal
!AssertionCheckerBuilder categoriesFor: #build!checking!public! !
!AssertionCheckerBuilder categoriesFor: #buildAndCheck!checking!public! !
!AssertionCheckerBuilder categoriesFor: #checking:!configuring!public! !
!AssertionCheckerBuilder categoriesFor: #failFast!configuring!public! !
!AssertionCheckerBuilder categoriesFor: #initialize!initialization!public! !
!AssertionCheckerBuilder categoriesFor: #raising:!configuring!public! !

!AssertionCheckerBuilder class methodsFor!

new
!AssertionCheckerBuilder class categoriesFor: #new!instance creation!public! !
