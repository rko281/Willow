﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB4TestRunnerTestResultWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB4TestRunnerTestResultWebView guid: (GUID fromString: '{64d98eb8-11c7-4d63-be54-edf040825cb3}')!
WPB4TestRunnerTestResultWebView comment: ''!
!WPB4TestRunnerTestResultWebView categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-4! !
!WPB4TestRunnerTestResultWebView methodsFor!

detailsLinkShowing: testResult

renderContentOn: html
	testResult duration isNil ifTrue: [^self].
!WPB4TestRunnerTestResultWebView categoriesFor: #detailsLinkShowing:!public!rendering! !
!WPB4TestRunnerTestResultWebView categoriesFor: #renderContentOn:!public!rendering! !
