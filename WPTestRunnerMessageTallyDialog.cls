"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPTestRunnerMessageTallyDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunnerMessageTallyDialog guid: (GUID fromString: '{0dfb52f2-70c8-496b-9689-821603c43181}')!
WPTestRunnerMessageTallyDialog comment: 'I''m a Dialog showing the message tally results.'!
!WPTestRunnerMessageTallyDialog categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPTestRunnerMessageTallyDialog methodsFor!

initialize	super initialize.	dialog := self componentSupplier dialogBuilder		headerTitled: 'Message Tally Result';		wrapping: [ :canvas | self renderTallyOn: canvas ];		closeButtonLabeled: 'Close' applying: [ :button | button addClass bootstrap buttonLink ];		beSelfCleaning;		buildApplying: [ :document | document addClass bootstrap modalLarge ]!

renderContentOn: html	html render: dialog!

renderTallyOn: html	self session applicationContext		withMessageTallyDo: [ :tally | html render: (WPMessageTallyWebView for: tally) ]		ifNone: [ html				render: (BootstrapIconWebView representing: Glyphicons flash);				space;				render: " 'Wow!! That was fast... no time to take a tally' " 'Sorry not implemented in Dolphin']! !
!WPTestRunnerMessageTallyDialog categoriesFor: #initialize!initialization!public! !
!WPTestRunnerMessageTallyDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPTestRunnerMessageTallyDialog categoriesFor: #renderTallyOn:!public!rendering! !

