﻿"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #WPTestRunnerApplicationContext
	instanceVariableNames: 'currentTestResult selectedTestCaseClasses selectedPackageCategories messageTallyOptional'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerApplicationContext guid: (GUID fromString: '{2b7a0d68-efd6-49d6-8fa0-1b298fd5006d}')!
WPTestRunnerApplicationContext comment: 'I''m holding the current test runner state and coordinate the transitions'!
!WPTestRunnerApplicationContext categoriesForClass!Willow-Playground-TestRunner-Application! !
!WPTestRunnerApplicationContext methodsFor!

availablePackageCategories

availableTestCaseClasses

currentTestResult

initialize

resetTestResult

	"currentTestResult := TestAsserter classForTestResult new"
	currentTestResult := TestResult new duration: 0; yourself!

runTests

runTestsProfiled

"	| messageTally |

	messageTally := MessageTally
		spyOn: [ self runTests ]
		reportOtherProcesses: false
		cutoff: 1
		openResultWindow: false
		closeAfter: false.

	messageTallyOptional := (messageTally tally strictlyPositive and: [ messageTally time strictlyPositive ])
		ifTrue: [ Optional containing: messageTally ]
		ifFalse: [ Optional unused ]"

	messageTallyOptional := Optional unused!

runTestSuites: testSuites

"	CurrentExecutionEnvironment runTestsBy: [ testSuites do: [ :suite | suite run: currentTestResult ] ]"
	testSuites do: [ :suite | suite run: currentTestResult ] !

setSelectedPackageCategoriesTo: categories

setSelectedTestCaseClassesTo: testCaseClasses

withMessageTallyDo: aFoundBlock ifNone: aNoneBlock
!WPTestRunnerApplicationContext categoriesFor: #availablePackageCategories!public!Querying! !
!WPTestRunnerApplicationContext categoriesFor: #availableTestCaseClasses!public!Querying! !
!WPTestRunnerApplicationContext categoriesFor: #currentTestResult!Accessing!public! !
!WPTestRunnerApplicationContext categoriesFor: #initialize!initialization!public! !
!WPTestRunnerApplicationContext categoriesFor: #resetTestResult!initialization!public! !
!WPTestRunnerApplicationContext categoriesFor: #runTests!Actions!public! !
!WPTestRunnerApplicationContext categoriesFor: #runTestsProfiled!Actions!public! !
!WPTestRunnerApplicationContext categoriesFor: #runTestSuites:!Actions!public! !
!WPTestRunnerApplicationContext categoriesFor: #setSelectedPackageCategoriesTo:!public!State Tracking! !
!WPTestRunnerApplicationContext categoriesFor: #setSelectedTestCaseClassesTo:!public!State Tracking! !
!WPTestRunnerApplicationContext categoriesFor: #withMessageTallyDo:ifNone:!Accessing!public! !
