"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPTestRunnerSuiteSelectionWebView
	instanceVariableNames: 'testCaseClassesListBox identifiedTestCaseClassesSelection packagesListBox'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerSuiteSelectionWebView guid: (GUID fromString: '{7ee98b34-77c0-4235-b72d-bcc49e4d0c0d}')!
WPTestRunnerSuiteSelectionWebView comment: 'I represent the test suite selection'!
!WPTestRunnerSuiteSelectionWebView categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPTestRunnerSuiteSelectionWebView methodsFor!

initialize	super initialize.	self		initializeTestCaseClassesSelection;		initializeIdentifiedTestCaseClassesSelection;		initializePackageSelection!

initializeIdentifiedTestCaseClassesSelection	identifiedTestCaseClassesSelection := IdentifiedWebView		forDivNamed: 'test-case-selection'		containing: [ :canvas | 			canvas				render:					(self componentSupplier						delayedViewShowing: SpinKitCircle new						whileEvaluating: [ testCaseClassesListBox allowAnyOf: self session applicationContext availableTestCaseClasses ]						thenRendering: (self labeledViewDisplaying: 'Test Cases' boundTo: testCaseClassesListBox)) ]!

initializePackageSelection	packagesListBox := self componentSupplier multipleSelectionListBoxDisplayingAtOnce: 25 applying: [  ].	packagesListBox onTrigger		serializeWithHiddenInputs;		evaluate: [ self session applicationContext setSelectedPackageCategoriesTo: packagesListBox currentSelection ];		render: identifiedTestCaseClassesSelection!

initializeTestCaseClassesSelection	testCaseClassesListBox := self componentSupplier multipleSelectionListBoxDisplayingAtOnce: 25 applying: [  ].	testCaseClassesListBox onTrigger		serializeWithHiddenInputs;		evaluate: [ self session applicationContext setSelectedTestCaseClassesTo: testCaseClassesListBox currentSelection ]!

labeledViewDisplaying: aLabel boundTo: aField	^ BootstrapLabeledWebView		displaying: aLabel		applying: [  ]		boundTo: aField		applying: [  ]!

renderContentOn: html	html		render:			(self componentSupplier				fieldSetContaining:					(self componentSupplier gridBuilder						addContent:							(self componentSupplier								delayedViewShowing: SpinKitCircle new								whileEvaluating: [ packagesListBox allowAnyOf: self session applicationContext availablePackageCategories ]								thenRendering: (self labeledViewDisplaying: 'Package Categories' boundTo: packagesListBox));						addContent: identifiedTestCaseClassesSelection;						build)				applying: [  ]				withLegend: 'Test Case Selection'				applying: [  ])! !
!WPTestRunnerSuiteSelectionWebView categoriesFor: #initialize!initialization!public! !
!WPTestRunnerSuiteSelectionWebView categoriesFor: #initializeIdentifiedTestCaseClassesSelection!initialization!public! !
!WPTestRunnerSuiteSelectionWebView categoriesFor: #initializePackageSelection!initialization!public! !
!WPTestRunnerSuiteSelectionWebView categoriesFor: #initializeTestCaseClassesSelection!initialization!public! !
!WPTestRunnerSuiteSelectionWebView categoriesFor: #labeledViewDisplaying:boundTo:!private! !
!WPTestRunnerSuiteSelectionWebView categoriesFor: #renderContentOn:!public!rendering! !

