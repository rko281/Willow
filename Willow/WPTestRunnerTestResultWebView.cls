"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPTestRunnerTestResultWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerTestResultWebView guid: (GUID fromString: '{d3723f6e-8737-45f8-84af-a6a952567fc7}')!
WPTestRunnerTestResultWebView comment: 'I will show the test result'!
!WPTestRunnerTestResultWebView categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPTestRunnerTestResultWebView methodsFor!

detailsLinkShowing: testResult	| showDetailsAnchor |	showDetailsAnchor := self componentSupplier		asynchronicLinkActingAsButtonLabeled: 'See the details here.'		applying: [ :anchor | anchor addClass bootstrap alertLink ].	showDetailsAnchor onTrigger open: (WPTestRunnerTestResultDetailsDialog for: testResult).	^ showDetailsAnchor!

renderContentOn: html	| notificationBuilder testResult |	testResult := self session applicationContext currentTestResult.	notificationBuilder := self componentSupplier notificationBuilder.	notificationBuilder		success;		wrapping: [ :canvas | 			canvas				render: testResult;				render: $.;				space;				render: (self detailsLinkShowing: testResult) ].	testResult hasFailures		ifTrue: [ notificationBuilder warning ].	testResult hasErrors		ifTrue: [ notificationBuilder danger ].	html render: notificationBuilder build! !
!WPTestRunnerTestResultWebView categoriesFor: #detailsLinkShowing:!public!rendering! !
!WPTestRunnerTestResultWebView categoriesFor: #renderContentOn:!public!rendering! !

