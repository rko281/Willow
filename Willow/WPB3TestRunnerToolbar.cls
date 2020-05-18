"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB3TestRunnerToolbar
	instanceVariableNames: 'runSelectedTestsButton runProfiledButton exportResultButton'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB3TestRunnerToolbar guid: (GUID fromString: '{3e7a4968-8ff2-4b7c-8825-96c8f1821271}')!
WPB3TestRunnerToolbar comment: 'Im the test runner toolbar'!
!WPB3TestRunnerToolbar categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-3! !
!WPB3TestRunnerToolbar methodsFor!

initialize	super initialize.	self		initializeRunSelectedTestsButton;		initializeRunProfiledButton;		initializeExportResultButton!

initializeExportResultButton	exportResultButton := FileDownloadAnchorWebView		labeled: (self label: 'Download' prependedBy: Glyphicons cloudDownload)		applying: [ :button | button addClass bootstrap3 button + button addClass bootstrap3 buttonDefault + button addClass bootstrap3 pullRight ]		obtainingFileUsing: [ WAMimeDocument on: (String streamContents: [ :stream | self session applicationContext currentTestResult fileOutOn: stream ]) mimeType: WAMimeType textPlain fileName: 'test-results.txt' ]!

initializeRunProfiledButton	runProfiledButton := self componentSupplier asynchronicButtonLabeled: (self label: 'Run Profiled' prependedBy: Glyphicons stats) applying: [ :button | button addClass bootstrap3 buttonDefault ]!

initializeRunSelectedTestsButton	runSelectedTestsButton := self componentSupplier		asynchronicButtonLabeled: ( self label: 'Run Selected' prependedBy: Glyphicons play )		applying: [ :button | button addClass bootstrap3 buttonDefault ]!

label: aText prependedBy: anIconClass	^ [ :canvas | 	canvas		render: (Bootstrap3IconWebView representing: anIconClass);		space;		render: aText ]!

onRunProfiledTrigger	^ runProfiledButton onTrigger!

onRunSelectedTestsTrigger	^ runSelectedTestsButton onTrigger!

renderContentOn: html	html div		with: [ 			html div				with: [ html						render: runSelectedTestsButton;						render: runProfiledButton ]				applying: [ :div | div addClass bootstrap3 buttonGroup ].			html render: exportResultButton ]		applying: [ :div | div addClass bootstrap3 buttonToolbar ].	html div: [ html space ]! !
!WPB3TestRunnerToolbar categoriesFor: #initialize!initialization!public! !
!WPB3TestRunnerToolbar categoriesFor: #initializeExportResultButton!initialization!public! !
!WPB3TestRunnerToolbar categoriesFor: #initializeRunProfiledButton!initialization!public! !
!WPB3TestRunnerToolbar categoriesFor: #initializeRunSelectedTestsButton!initialization!public! !
!WPB3TestRunnerToolbar categoriesFor: #label:prependedBy:!private! !
!WPB3TestRunnerToolbar categoriesFor: #onRunProfiledTrigger!Interaction!public! !
!WPB3TestRunnerToolbar categoriesFor: #onRunSelectedTestsTrigger!Interaction!public! !
!WPB3TestRunnerToolbar categoriesFor: #renderContentOn:!public!rendering! !

