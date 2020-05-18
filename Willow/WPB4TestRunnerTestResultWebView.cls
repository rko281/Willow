"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB4TestRunnerTestResultWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB4TestRunnerTestResultWebView guid: (GUID fromString: '{64d98eb8-11c7-4d63-be54-edf040825cb3}')!
WPB4TestRunnerTestResultWebView comment: ''!
!WPB4TestRunnerTestResultWebView categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-4! !
!WPB4TestRunnerTestResultWebView methodsFor!

detailsLinkShowing: testResult	| showDetailsAnchor |	showDetailsAnchor := self componentSupplier		asynchronicLinkActingAsButtonLabeled: 'See the details here.'		applying: [ :anchor | anchor addClass bootstrap4 alertLink ].	showDetailsAnchor onTrigger open: (WPB4TestRunnerTestResultDetailsDialog for: testResult).	^ showDetailsAnchor!

renderContentOn: html	| notificationBuilder testResult |	testResult := self session applicationContext currentTestResult.
	testResult duration isNil ifTrue: [^self].	notificationBuilder := self componentSupplier notificationBuilder.	notificationBuilder		success;		wrapping: [ :canvas | 			canvas				render: testResult;				render: $.;				space;				render: (self detailsLinkShowing: testResult) ].	testResult hasFailures		ifTrue: [ notificationBuilder warning ].	testResult hasErrors		ifTrue: [ notificationBuilder danger ].	html render: notificationBuilder build! !
!WPB4TestRunnerTestResultWebView categoriesFor: #detailsLinkShowing:!public!rendering! !
!WPB4TestRunnerTestResultWebView categoriesFor: #renderContentOn:!public!rendering! !

