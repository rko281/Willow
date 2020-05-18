﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB3TestRunnerTestResultDetailsDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB3TestRunnerTestResultDetailsDialog guid: (GUID fromString: '{8e0200ca-c50a-4cb2-9880-3f5347520612}')!
WPB3TestRunnerTestResultDetailsDialog comment: 'I show the test result details'!
!WPB3TestRunnerTestResultDetailsDialog categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-3! !
!WPB3TestRunnerTestResultDetailsDialog methodsFor!

initializeFor: aTestResult

renderContentOn: html

renderDetailsFor: aTestResult on: html

renderErrorsFor: aTestResult on: html

renderFailuresFor: aTestResult on: html

summaryFor: aTestResult
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #initializeFor:!initialization!public! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderDetailsFor:on:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderErrorsFor:on:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderFailuresFor:on:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #summaryFor:!public!rendering! !

!WPB3TestRunnerTestResultDetailsDialog class methodsFor!

for: aTestResult
!WPB3TestRunnerTestResultDetailsDialog class categoriesFor: #for:!instance creation!public! !
