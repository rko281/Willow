"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB3TestRunnerTestResultWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB3TestRunnerTestResultWebView guid: (GUID fromString: '{44b4e82d-f2f6-4c32-afea-2af52dfd48bc}')!
WPB3TestRunnerTestResultWebView comment: 'I will show the test result'!
!WPB3TestRunnerTestResultWebView categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-3! !
!WPB3TestRunnerTestResultWebView methodsFor!

detailsLinkShowing: testResult	| showDetailsAnchor |	showDetailsAnchor := self componentSupplier		asynchronicLinkActingAsButtonLabeled: 'See the details here.'		applying: [ :anchor | anchor addClass bootstrap3 alertLink ].	showDetailsAnchor onTrigger open: (WPB3TestRunnerTestResultDetailsDialog for: testResult).	^ showDetailsAnchor!

renderContentOn: html	| notificationBuilder testResult |	testResult := self session applicationContext currentTestResult.	testResult duration isNil ifTrue: [^self].
	notificationBuilder := self componentSupplier notificationBuilder.	notificationBuilder		success;		wrapping: [ :canvas | 			canvas				render: testResult;				render: $.;				space;				render: (self detailsLinkShowing: testResult) ].	testResult hasFailures		ifTrue: [ notificationBuilder warning ].	testResult hasErrors		ifTrue: [ notificationBuilder danger ].	html render: notificationBuilder build! !
!WPB3TestRunnerTestResultWebView categoriesFor: #detailsLinkShowing:!public!rendering! !
!WPB3TestRunnerTestResultWebView categoriesFor: #renderContentOn:!public!rendering! !

