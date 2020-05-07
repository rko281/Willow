"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #Bootstrap3HelpTextWebView
	instanceVariableNames: 'fieldWebView helpText'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Bootstrap3HelpTextWebView guid: (GUID fromString: '{732448c6-3cf2-4e5f-a165-9e2ccf524321}')!
Bootstrap3HelpTextWebView comment: 'Block level help text for form controls.'!
!Bootstrap3HelpTextWebView categoriesForClass!Willow-Bootstrap-3-WebViews! !
!Bootstrap3HelpTextWebView methodsFor!

identifyIn: aCanvas	^ fieldWebView identifyIn: aCanvas!

initializeBoundTo: aFieldWebView describedBy: aHelpText	fieldWebView := aFieldWebView.	helpText := aHelpText!

renderContentOn: aCanvas	aCanvas render: fieldWebView.	aCanvas span with: helpText applying: [ :span | span addClass bootstrap3 helpBlock ]! !
!Bootstrap3HelpTextWebView categoriesFor: #identifyIn:!configuring!public! !
!Bootstrap3HelpTextWebView categoriesFor: #initializeBoundTo:describedBy:!initialization!public! !
!Bootstrap3HelpTextWebView categoriesFor: #renderContentOn:!public!rendering! !

!Bootstrap3HelpTextWebView class methodsFor!

boundTo: aFieldWebView describedBy: aHelpText	^ self new initializeBoundTo: aFieldWebView describedBy: aHelpText! !
!Bootstrap3HelpTextWebView class categoriesFor: #boundTo:describedBy:!Instance Creation!public! !

