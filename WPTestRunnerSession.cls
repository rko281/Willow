"Filed out from Dolphin Smalltalk 7"!

WillowSession subclass: #WPTestRunnerSession
	instanceVariableNames: 'applicationContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerSession guid: (GUID fromString: '{08044bab-31c1-4adb-b2d0-59102b4e8e78}')!
WPTestRunnerSession comment: 'I''m a session holding the context for the Test Runner'!
!WPTestRunnerSession categoriesForClass!Willow-Playground-TestRunner-Application! !
!WPTestRunnerSession methodsFor!

applicationContext	^ applicationContext!

startUpApplicationContextFor: aTestRunner	super startUpApplicationContextFor: aTestRunner.	applicationContext := WPTestRunnerApplicationContext new! !
!WPTestRunnerSession categoriesFor: #applicationContext!accessing!public! !
!WPTestRunnerSession categoriesFor: #startUpApplicationContextFor:!Controlling!public! !

