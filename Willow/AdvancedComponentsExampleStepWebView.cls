"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #AdvancedComponentsExampleStepWebView
	instanceVariableNames: 'tableBuilder table periodical delayed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AdvancedComponentsExampleStepWebView guid: (GUID fromString: '{3d8536f6-b203-4d61-a5be-d7ec67707e82}')!
AdvancedComponentsExampleStepWebView comment: 'I''m a step showing some complex components.'!
!AdvancedComponentsExampleStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!AdvancedComponentsExampleStepWebView methodsFor!

currentTime	^ GRPrinter isoTime print: Time now!

description	^ 'Some components provide additional features'!

initialize	super initialize.	self initializeTable.	self initializePeriodical.!

initializeDelayed	delayed := DelayedViewRenderer		showing: SpinKitGrid new		whileEvaluating: [ self makeHeavyCalculations ]		thenRendering: [ :canvas | canvas 							render: periodical;							render: table ]!

initializePeriodical	periodical := PeriodicallyRenderedWebView		evaluating: [  ] every: 1000 millisecondsThenRendering:			[ :canvas | canvas				render: 'The time now is ';				strong: self currentTime ]		until: [ false ]!

initializeTable	table := TableWebViewBuilder new	  addColumn: [:column | column titled: 'Decimal'; rendering: [ :number | number ]];	  addColumn: [:column | column titled: 'Hex'; rendering: [ :number | number printStringHex ]];	  addColumn: [:column | column titled: 'Roman'; rendering: [ :number | number printStringRoman ]];	  buildApplying: [ :theTable | theTable addClass bootstrap3 table ].	table changeContentsTo: #(26 51 78)!

makeHeavyCalculations	^ (Delay forSeconds: 2) wait!

renderContentOn: aCanvas	self initializeDelayed.	self renderPanelWrapping: delayed on: aCanvas.	self		renderCarouselWithAll:			(Array				with: [ :canvas | self renderSourceOf: #initializeDelayed withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializePeriodical withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializeTable withBrowseButtonOn: canvas ])		on: aCanvas!

shortName	^ 'Advanced components'! !
!AdvancedComponentsExampleStepWebView categoriesFor: #currentTime!private/accessing!public! !
!AdvancedComponentsExampleStepWebView categoriesFor: #description!accessing!public! !
!AdvancedComponentsExampleStepWebView categoriesFor: #initialize!initialization!public! !
!AdvancedComponentsExampleStepWebView categoriesFor: #initializeDelayed!initialization!public! !
!AdvancedComponentsExampleStepWebView categoriesFor: #initializePeriodical!initialization!public! !
!AdvancedComponentsExampleStepWebView categoriesFor: #initializeTable!initialization!public! !
!AdvancedComponentsExampleStepWebView categoriesFor: #makeHeavyCalculations!private/computing!public! !
!AdvancedComponentsExampleStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!AdvancedComponentsExampleStepWebView categoriesFor: #shortName!accessing!public! !

