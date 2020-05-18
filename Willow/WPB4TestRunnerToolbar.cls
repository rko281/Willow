"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB4TestRunnerToolbar
	instanceVariableNames: 'runSelectedTestsButton runProfiledButton exportResultButton'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB4TestRunnerToolbar guid: (GUID fromString: '{5b20a2cf-65d7-4fcb-be15-409fc3b94a61}')!
WPB4TestRunnerToolbar comment: ''!
!WPB4TestRunnerToolbar categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-4! !
!WPB4TestRunnerToolbar methodsFor!

initialize	super initialize.	self		initializeRunSelectedTestsButton;		initializeRunProfiledButton;		initializeExportResultButton!

initializeExportResultButton	exportResultButton := FileDownloadAnchorWebView		labeled: 'Download'		applying: [ :button | 			button addClass bootstrap4 button + button addClass bootstrap4 buttonSecondary				+ button addClass bootstrap4 floatRight			]		obtainingFileUsing: [ WAMimeDocument				on:					( String						streamContents: [ :stream | self session applicationContext currentTestResult fileOutOn: stream ] )				mimeType: WAMimeType textPlain				fileName: 'test-results.txt'			]!

initializeRunProfiledButton	runProfiledButton := self componentSupplier		asynchronicButtonLabeled: 'Run Profiled'		applying: [ :button | button addClass bootstrap4 buttonSecondary ]!

initializeRunSelectedTestsButton	runSelectedTestsButton := self componentSupplier		asynchronicButtonLabeled: 'Run Selected'		applying: [ :button | button addClass bootstrap4 buttonPrimary ]!

onRunProfiledTrigger	^ runProfiledButton onTrigger!

onRunSelectedTestsTrigger	^ runSelectedTestsButton onTrigger!

renderContentOn: html	html render: exportResultButton.	html div		with: [ html div				with: [ html						render: runSelectedTestsButton;						render: runProfiledButton					]				applying: [ :div | div addClass bootstrap4 buttonGroup ]			]		applying: [ :div | div addClass bootstrap4 buttonToolbar ].	html div: [ html space ]! !
!WPB4TestRunnerToolbar categoriesFor: #initialize!initialization!public! !
!WPB4TestRunnerToolbar categoriesFor: #initializeExportResultButton!initialization!public! !
!WPB4TestRunnerToolbar categoriesFor: #initializeRunProfiledButton!initialization!public! !
!WPB4TestRunnerToolbar categoriesFor: #initializeRunSelectedTestsButton!initialization!public! !
!WPB4TestRunnerToolbar categoriesFor: #onRunProfiledTrigger!Interaction!public! !
!WPB4TestRunnerToolbar categoriesFor: #onRunSelectedTestsTrigger!Interaction!public! !
!WPB4TestRunnerToolbar categoriesFor: #renderContentOn:!public!rendering! !

