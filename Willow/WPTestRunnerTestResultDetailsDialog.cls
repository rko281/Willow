﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPTestRunnerTestResultDetailsDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerTestResultDetailsDialog guid: (GUID fromString: '{3c9e68d8-b62d-4b34-a882-9e62b9b64f4d}')!
WPTestRunnerTestResultDetailsDialog comment: 'I show the test result details'!
!WPTestRunnerTestResultDetailsDialog categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPTestRunnerTestResultDetailsDialog methodsFor!

initializeFor: aTestResult

renderContentOn: html

renderDetailsFor: aTestResult on: html

renderErrorsFor: aTestResult on: html

renderFailuresFor: aTestResult on: html

summaryFor: aTestResult
!WPTestRunnerTestResultDetailsDialog categoriesFor: #initializeFor:!initialization!public! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderDetailsFor:on:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderErrorsFor:on:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderFailuresFor:on:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #summaryFor:!public!rendering! !

!WPTestRunnerTestResultDetailsDialog class methodsFor!

for: aTestResult
!WPTestRunnerTestResultDetailsDialog class categoriesFor: #for:!instance creation!public! !
