"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB4TestRunnerMessageTallyDialog
	instanceVariableNames: 'dialog'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB4TestRunnerMessageTallyDialog guid: (GUID fromString: '{3e4feb51-c005-4837-84b0-ef0430dd31ce}')!
WPB4TestRunnerMessageTallyDialog comment: ''!
!WPB4TestRunnerMessageTallyDialog categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-4! !
!WPB4TestRunnerMessageTallyDialog methodsFor!

initialize	super initialize.	dialog := self componentSupplier dialogBuilder		headerTitled: 'Message Tally Result';		wrapping: [ :canvas | self renderTallyOn: canvas ];		closeButtonLabeled: 'Close' applying: [ :button | button addClass bootstrap4 buttonLink ];		beSelfCleaning;		buildApplying: [ :document | document addClass bootstrap4 modalLarge ]!

renderContentOn: html	html render: dialog!

renderTallyOn: html	self session applicationContext		withMessageTallyDo: [ :tally | html render: ( WPB4MessageTallyWebView for: tally ) ]		ifNone: [ html render: 'Wow!! That was fast... no time to take a tally' ]! !
!WPB4TestRunnerMessageTallyDialog categoriesFor: #initialize!initialization!public! !
!WPB4TestRunnerMessageTallyDialog categoriesFor: #renderContentOn:!public!rendering! !
!WPB4TestRunnerMessageTallyDialog categoriesFor: #renderTallyOn:!public!rendering! !

