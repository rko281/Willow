"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPTestRunnerTestResultDetailsDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerTestResultDetailsDialog guid: (GUID fromString: '{3c9e68d8-b62d-4b34-a882-9e62b9b64f4d}')!
WPTestRunnerTestResultDetailsDialog comment: 'I show the test result details'!
!WPTestRunnerTestResultDetailsDialog categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPTestRunnerTestResultDetailsDialog methodsFor!

initializeFor: aTestResult	dialog := self componentSupplier dialogBuilder		headerTitled: 'Test Result Details';		wrapping: [ :canvas | self renderDetailsFor: aTestResult on: canvas ];		closeButtonLabeled: 'Close' applying: [ :button | button addClass bootstrap buttonLink ];		beSelfCleaning;		build!

renderContentOn: html	html render: dialog!

renderDetailsFor: aTestResult on: html	html render: (self summaryFor: aTestResult).	self		renderFailuresFor: aTestResult on: html;		renderErrorsFor: aTestResult on: html!

renderErrorsFor: aTestResult on: html	aTestResult hasErrors		ifTrue: [ | errorsTable |			html render: (HeadingWebView displaying: ('Errors (<1p>)' expandMacrosWith: aTestResult errorCount) withLevel: 4 applying: [ :heading | heading addClass bootstrap textDanger ]).			errorsTable := self componentSupplier tableBuilder				addColumn: [ :column | 					column						titled: 'Class' applying: [ :headingCell | headingCell addClass bootstrap textDanger ];						rendering: [ :failure | failure class name ] ];				addColumn: [ :column | 					column						titled: 'Selector' applying: [ :headingCell | headingCell addClass bootstrap textDanger ];						rendering: [ :failure | failure selector ] ];				build.			errorsTable changeContentsTo: aTestResult errors.			html render: errorsTable ]!

renderFailuresFor: aTestResult on: html	aTestResult hasFailures		ifTrue: [ | failuresTable |			html render: (HeadingWebView displaying: ('Failures (<1p>)' expandMacrosWith: aTestResult failureCount) withLevel: 4 applying: [ :heading | heading addClass bootstrap textWarning ]).			failuresTable := self componentSupplier tableBuilder				addColumn: [ :column | 					column						titled: 'Class' applying: [ :headingCell | headingCell addClass bootstrap textWarning ];						rendering: [ :failure | failure class name ] ];				addColumn: [ :column | 					column						titled: 'Selector' applying: [ :headingCell | headingCell addClass bootstrap textWarning ];						rendering: [ :failure | failure selector ] ];				build.			failuresTable changeContentsTo: aTestResult failures.			html render: failuresTable ]!

summaryFor: aTestResult	^ self componentSupplier gridBuilder		columnsPerRow: 1;		applyingToCells: [ :cell | cell addClass bootstrap textCenter ];		addContent: [ :canvas | 			canvas				render: (HeadingWebView displaying: 'Summary' withLevel: 4 applying: [ :heading | heading addClass bootstrap textInfo + heading addClass bootstrap textLeft ]);				render: (PhrasingContainerWebView wrapping: aTestResult runCount applying: [ :span | span addClass bootstrap label + span addClass bootstrap labelDefault ]);				space;				render: 'run';				space;				render: (PhrasingContainerWebView wrapping: aTestResult passedCount applying: [ :span | span addClass bootstrap label + span addClass bootstrap labelSuccess ]);				space;				render: 'passes';				space;				render: (PhrasingContainerWebView wrapping: aTestResult skippedCount applying: [ :span | span addClass bootstrap label + span addClass bootstrap labelInfo ]);				space;				render: 'skipped';				space;				render: (PhrasingContainerWebView wrapping: aTestResult failureCount applying: [ :span | span addClass bootstrap label + span addClass bootstrap labelWarning ]);				space;				render: 'failures';				space;				render: (PhrasingContainerWebView wrapping: aTestResult errorCount applying: [ :span | span addClass bootstrap label + span addClass bootstrap labelDanger ]);				space;				render: 'errors';				space ];		build! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #initializeFor:!initialization!public! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderDetailsFor:on:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderErrorsFor:on:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #renderFailuresFor:on:!public!rendering! !
!WPTestRunnerTestResultDetailsDialog categoriesFor: #summaryFor:!public!rendering! !

!WPTestRunnerTestResultDetailsDialog class methodsFor!

for: aTestResult	^ self new initializeFor: aTestResult! !
!WPTestRunnerTestResultDetailsDialog class categoriesFor: #for:!instance creation!public! !

