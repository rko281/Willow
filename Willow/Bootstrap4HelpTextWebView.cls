"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #Bootstrap4HelpTextWebView
	instanceVariableNames: 'fieldWebView helpText'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap4HelpTextWebView guid: (GUID fromString: '{6bc2adfe-05df-4026-9ff4-eab3f3371cd1}')!
Bootstrap4HelpTextWebView comment: ''!
!Bootstrap4HelpTextWebView categoriesForClass!Willow-Bootstrap-4-WebViews! !
!Bootstrap4HelpTextWebView methodsFor!

identifyIn: aCanvas	^ fieldWebView identifyIn: aCanvas!

initializeBoundTo: aFieldWebView describedBy: aHelpText	fieldWebView := aFieldWebView.	helpText := aHelpText!

renderContentOn: aCanvas	aCanvas render: fieldWebView.	aCanvas small with: helpText applying: [ :span | span addClass bootstrap4 formText ]! !
!Bootstrap4HelpTextWebView categoriesFor: #identifyIn:!configuring!public! !
!Bootstrap4HelpTextWebView categoriesFor: #initializeBoundTo:describedBy:!initialization!public! !
!Bootstrap4HelpTextWebView categoriesFor: #renderContentOn:!public!rendering! !

!Bootstrap4HelpTextWebView class methodsFor!

boundTo: aFieldWebView describedBy: aHelpText	^ self new initializeBoundTo: aFieldWebView describedBy: aHelpText! !
!Bootstrap4HelpTextWebView class categoriesFor: #boundTo:describedBy:!Instance Creation!public! !

