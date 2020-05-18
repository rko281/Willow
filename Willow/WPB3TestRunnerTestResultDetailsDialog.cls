"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB3TestRunnerTestResultDetailsDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB3TestRunnerTestResultDetailsDialog guid: (GUID fromString: '{8e0200ca-c50a-4cb2-9880-3f5347520612}')!
WPB3TestRunnerTestResultDetailsDialog comment: 'I show the test result details'!
!WPB3TestRunnerTestResultDetailsDialog categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-3! !
!WPB3TestRunnerTestResultDetailsDialog methodsFor!

initializeFor: aTestResult	dialog := self componentSupplier dialogBuilder		headerTitled: 'Test Result Details';		wrapping: [ :canvas | self renderDetailsFor: aTestResult on: canvas ];		closeButtonLabeled: 'Close' applying: [ :button | button addClass bootstrap3 buttonLink ];		beSelfCleaning;		build!

renderContentOn: html	html render: dialog!

renderDetailsFor: aTestResult on: html	html render: (self summaryFor: aTestResult).	self		renderFailuresFor: aTestResult on: html;		renderErrorsFor: aTestResult on: html!

renderErrorsFor: aTestResult on: html	aTestResult hasErrors		ifTrue: [ | errorsTable |			html render: (HeadingWebView displaying: ('Errors (<1p>)' expandMacrosWith: aTestResult errorCount) withLevel: 4 applying: [ :heading | heading addClass bootstrap3 textDanger ]).			errorsTable := self componentSupplier tableBuilder				addColumn: [ :column | 					column						titled: 'Class' applying: [ :headingCell | headingCell addClass bootstrap3 textDanger ];						rendering: [ :failure | failure class name ] ];				addColumn: [ :column | 					column						titled: 'Selector' applying: [ :headingCell | headingCell addClass bootstrap3 textDanger ];						rendering: [ :failure | failure selector ] ];				build.			errorsTable changeContentsTo: aTestResult errors.			html render: errorsTable ]!

renderFailuresFor: aTestResult on: html	aTestResult hasFailures		ifTrue: [ | failuresTable |			html render: (HeadingWebView displaying: ('Failures (<1p>)' expandMacrosWith: aTestResult failureCount) withLevel: 4 applying: [ :heading | heading addClass bootstrap3 textWarning ]).			failuresTable := self componentSupplier tableBuilder				addColumn: [ :column | 					column						titled: 'Class' applying: [ :headingCell | headingCell addClass bootstrap3 textWarning ];						rendering: [ :failure | failure class name ] ];				addColumn: [ :column | 					column						titled: 'Selector' applying: [ :headingCell | headingCell addClass bootstrap3 textWarning ];						rendering: [ :failure | failure selector ] ];				build.			failuresTable changeContentsTo: aTestResult failures.			html render: failuresTable ]!

summaryFor: aTestResult	^ self componentSupplier gridBuilder		columnsPerRow: 1;		applyingToCells: [ :cell | cell addClass bootstrap3 textCenter ];		addContent: [ :canvas | 			canvas				render: (HeadingWebView displaying: 'Summary' withLevel: 4 applying: [ :heading | heading addClass bootstrap3 textInfo + heading addClass bootstrap3 textLeft ]);				render: (PhrasingContainerWebView wrapping: aTestResult runCount applying: [ :span | span addClass bootstrap3 label + span addClass bootstrap3 labelDefault ]);				space;				render: 'run';				space;				render: (PhrasingContainerWebView wrapping: aTestResult passedCount applying: [ :span | span addClass bootstrap3 label + span addClass bootstrap3 labelSuccess ]);				space;				render: 'passes';				space;				render: (PhrasingContainerWebView wrapping: aTestResult skippedCount applying: [ :span | span addClass bootstrap3 label + span addClass bootstrap3 labelInfo ]);				space;				render: 'skipped';				space;				render: (PhrasingContainerWebView wrapping: aTestResult failureCount applying: [ :span | span addClass bootstrap3 label + span addClass bootstrap3 labelWarning ]);				space;				render: 'failures';				space;				render: (PhrasingContainerWebView wrapping: aTestResult errorCount applying: [ :span | span addClass bootstrap3 label + span addClass bootstrap3 labelDanger ]);				space;				render: 'errors';				space ];		build! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #initializeFor:!initialization!public! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderDetailsFor:on:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderErrorsFor:on:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #renderFailuresFor:on:!public!rendering! !
!WPB3TestRunnerTestResultDetailsDialog categoriesFor: #summaryFor:!public!rendering! !

!WPB3TestRunnerTestResultDetailsDialog class methodsFor!

for: aTestResult	^ self new initializeFor: aTestResult! !
!WPB3TestRunnerTestResultDetailsDialog class categoriesFor: #for:!instance creation!public! !

