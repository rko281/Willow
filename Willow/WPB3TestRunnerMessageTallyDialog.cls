"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB3TestRunnerMessageTallyDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB3TestRunnerMessageTallyDialog guid: (GUID fromString: '{12b07cda-5d84-491e-9272-b2be2fa77c7a}')!
WPB3TestRunnerMessageTallyDialog comment: 'I''m a Dialog showing the message tally results.'!
!WPB3TestRunnerMessageTallyDialog categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-3! !
!WPB3TestRunnerMessageTallyDialog methodsFor!

initialize	super initialize.	dialog := self componentSupplier dialogBuilder		headerTitled: 'Message Tally Result';		wrapping: [ :canvas | self renderTallyOn: canvas ];		closeButtonLabeled: 'Close' applying: [ :button | button addClass bootstrap3 buttonLink ];		beSelfCleaning;		buildApplying: [ :document | document addClass bootstrap3 modalLarge ]!

renderContentOn: html	html render: dialog!

renderTallyOn: html	self session applicationContext		withMessageTallyDo: [ :tally | html render: (WPB3MessageTallyWebView for: tally) ]		ifNone: [ html				render: (Bootstrap3IconWebView representing: Glyphicons flash);				space;				render: 'Wow!! That was fast... no time to take a tally' ]! !
!WPB3TestRunnerMessageTallyDialog categoriesFor: #initialize!initialization!public! !
!WPB3TestRunnerMessageTallyDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPB3TestRunnerMessageTallyDialog categoriesFor: #renderTallyOn:!public!rendering! !

