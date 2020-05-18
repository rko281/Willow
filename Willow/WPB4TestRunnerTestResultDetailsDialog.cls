"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB4TestRunnerTestResultDetailsDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB4TestRunnerTestResultDetailsDialog guid: (GUID fromString: '{5e15afac-ac50-4bdb-9b9e-c8127105a537}')!
WPB4TestRunnerTestResultDetailsDialog comment: ''!
!WPB4TestRunnerTestResultDetailsDialog categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-4! !
!WPB4TestRunnerTestResultDetailsDialog methodsFor!

initializeFor: aTestResult	dialog := self componentSupplier dialogBuilder		headerTitled: 'Test Result Details';		wrapping: [ :canvas | self renderDetailsFor: aTestResult on: canvas ];		closeButtonLabeled: 'Close' applying: [ :button | button addClass bootstrap4 buttonLink ];		beSelfCleaning;		build!

renderContentOn: html	html render: dialog!

renderDetailsFor: aTestResult on: html	html render: (self summaryFor: aTestResult).	self		renderFailuresFor: aTestResult on: html;		renderErrorsFor: aTestResult on: html!

renderErrorsFor: aTestResult on: html	aTestResult hasErrors		ifTrue: [ | errorsTable |			html render: (HeadingWebView displaying: ('Errors (<1p>)' expandMacrosWith: aTestResult errorCount) withLevel: 4 applying: [ :heading | heading addClass bootstrap4 textDanger ]).			errorsTable := self componentSupplier tableBuilder				addColumn: [ :column | 					column						titled: 'Class' applying: [ :headingCell | headingCell addClass bootstrap4 textDanger ];						rendering: [ :failure | failure class name ] ];				addColumn: [ :column | 					column						titled: 'Selector' applying: [ :headingCell | headingCell addClass bootstrap4 textDanger ];						rendering: [ :failure | failure selector ] ];				build.			errorsTable changeContentsTo: aTestResult errors.			html render: errorsTable ]!

renderFailuresFor: aTestResult on: html	aTestResult hasFailures		ifTrue: [ | failuresTable |			html render: (HeadingWebView displaying: ('Failures (<1p>)' expandMacrosWith: aTestResult failureCount) withLevel: 4 applying: [ :heading | heading addClass bootstrap4 textWarning ]).			failuresTable := self componentSupplier tableBuilder				addColumn: [ :column | 					column						titled: 'Class' applying: [ :headingCell | headingCell addClass bootstrap4 textWarning ];						rendering: [ :failure | failure class name ] ];				addColumn: [ :column | 					column						titled: 'Selector' applying: [ :headingCell | headingCell addClass bootstrap4 textWarning ];						rendering: [ :failure | failure selector ] ];				build.			failuresTable changeContentsTo: aTestResult failures.			html render: failuresTable ]!

summaryFor: aTestResult	^ self componentSupplier gridBuilder		columnsPerRow: 1;		applyingToCells: [ :cell | cell addClass bootstrap3 textCenter ];		addContent: [ :canvas | 			canvas				render:					( HeadingWebView						displaying: 'Summary'						withLevel: 4						applying: [ :heading | heading addClass bootstrap4 textInfo + heading addClass bootstrap4 textLeft ] );				render:					( PhrasingContainerWebView						wrapping: aTestResult runCount						applying: [ :span | span addClass bootstrap4 badge + span addClass bootstrap4 badgeSecondary ] );				space;				render: 'run';				space;				render:					( PhrasingContainerWebView						wrapping: aTestResult passedCount						applying: [ :span | span addClass bootstrap4 badge + span addClass bootstrap4 badgeSuccess ] );				space;				render: 'passes';				space;				render:					( PhrasingContainerWebView						wrapping: aTestResult skippedCount						applying: [ :span | span addClass bootstrap4 badge + span addClass bootstrap4 badgeInfo ] );				space;				render: 'skipped';				space;				render:					( PhrasingContainerWebView						wrapping: aTestResult failureCount						applying: [ :span | span addClass bootstrap4 badge + span addClass bootstrap4 badgeWarning ] );				space;				render: 'failures';				space;				render:					( PhrasingContainerWebView						wrapping: aTestResult errorCount						applying: [ :span | span addClass bootstrap4 badge + span addClass bootstrap4 badgeDanger ] );				space;				render: 'errors';				space			];		build! !
!WPB4TestRunnerTestResultDetailsDialog categoriesFor: #initializeFor:!initialization!public! !
!WPB4TestRunnerTestResultDetailsDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPB4TestRunnerTestResultDetailsDialog categoriesFor: #renderDetailsFor:on:!public!rendering! !
!WPB4TestRunnerTestResultDetailsDialog categoriesFor: #renderErrorsFor:on:!public!rendering! !
!WPB4TestRunnerTestResultDetailsDialog categoriesFor: #renderFailuresFor:on:!public!rendering! !
!WPB4TestRunnerTestResultDetailsDialog categoriesFor: #summaryFor:!public!rendering! !

!WPB4TestRunnerTestResultDetailsDialog class methodsFor!

for: aTestResult	^ self new initializeFor: aTestResult! !
!WPB4TestRunnerTestResultDetailsDialog class categoriesFor: #for:!instance creation!public! !

