"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPTestRunnerToolbar
	instanceVariableNames: 'runSelectedTestsButton runProfiledButton exportResultButton'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerToolbar guid: (GUID fromString: '{9bb851ba-daae-4375-a30d-d53ffbaa8c6e}')!
WPTestRunnerToolbar comment: 'Im the test runner toolbar'!
!WPTestRunnerToolbar categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPTestRunnerToolbar methodsFor!

initialize	super initialize.	self		initializeRunSelectedTestsButton;		initializeRunProfiledButton;		initializeExportResultButton!

initializeExportResultButton	exportResultButton := FileDownloadAnchorWebView		labeled: (self label: 'Download' prependedBy: Glyphicons cloudDownload)		applying: [ :button | button addClass bootstrap3 button + button addClass bootstrap3 buttonDefault + button addClass bootstrap3 pullRight ]		obtainingFileUsing: [ WAMimeDocument on: (String streamContents: [ :stream | self session applicationContext currentTestResult fileOutOn: stream ]) mimeType: WAMimeType textPlain fileName: 'test-results.txt' ]!

initializeRunProfiledButton	runProfiledButton := self componentSupplier asynchronicButtonLabeled: (self label: 'Run Profiled' prependedBy: Glyphicons stats) applying: [ :button | button addClass bootstrap3 buttonDefault ]!

initializeRunSelectedTestsButton	runSelectedTestsButton := self componentSupplier		asynchronicButtonLabeled: ( self label: 'Run Selected' prependedBy: Glyphicons play )		applying: [ :button | button addClass bootstrap3 buttonDefault ]!

label: aText prependedBy: anIconClass	^ [ :canvas | 	canvas		render: (Bootstrap3IconWebView representing: anIconClass);		space;		render: aText ]!

onRunProfiledTrigger	^ runProfiledButton onTrigger!

onRunSelectedTestsTrigger	^ runSelectedTestsButton onTrigger!

renderContentOn: html	html div		with: [ 			html div				with: [ html						render: runSelectedTestsButton;						render: runProfiledButton ]				applying: [ :div | div addClass bootstrap3 buttonGroup ].			html render: exportResultButton ]		applying: [ :div | div addClass bootstrap3 buttonToolbar ].	html div: [ html space ]! !
!WPTestRunnerToolbar categoriesFor: #initialize!initialization!public! !
!WPTestRunnerToolbar categoriesFor: #initializeExportResultButton!initialization!public! !
!WPTestRunnerToolbar categoriesFor: #initializeRunProfiledButton!initialization!public! !
!WPTestRunnerToolbar categoriesFor: #initializeRunSelectedTestsButton!initialization!public! !
!WPTestRunnerToolbar categoriesFor: #label:prependedBy:!private! !
!WPTestRunnerToolbar categoriesFor: #onRunProfiledTrigger!Interaction!public! !
!WPTestRunnerToolbar categoriesFor: #onRunSelectedTestsTrigger!Interaction!public! !
!WPTestRunnerToolbar categoriesFor: #renderContentOn:!public!rendering! !

