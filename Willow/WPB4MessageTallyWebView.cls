"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB4MessageTallyWebView
	instanceVariableNames: 'rootTally'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB4MessageTallyWebView guid: (GUID fromString: '{aec834e1-5cd0-4d4b-ab5b-071bd0bf00d3}')!
WPB4MessageTallyWebView comment: ''!
!WPB4MessageTallyWebView categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-4! !
!WPB4MessageTallyWebView methodsFor!

formattedPercentagFor: node	^ (GRNumberPrinter new		precision: 2;		yourself) , '%' print: (self percentageFor: node) value!

headingRendering: aRenderable	^ HeadingWebView displaying: aRenderable withLevel: 4 applying: [ :heading | heading addClass bootstrap4 textInfo ]!

initializeFor: aMessageTally	rootTally := aMessageTally!

itemRenderingCommandFor: node	^ [ :html | 	html span with: (self formattedPercentagFor: node) applying: [ :label | label addClass bootstrap4 badge + label addClass bootstrap4 badgePrimary ].	html space.	html span		with: [ html				render: (self timeFor: node);				space;				render: 'ms' ]		applying: [ :label | label addClass bootstrap4 badge + label addClass bootstrap4 badgeSecondary ].	html		space;		render: node method methodClass;		space;		render: '>>';		space;		render: node method selector;		render: (self unorderedListRendering: node receivers) ]!

percentageFor: node	^ Percentage ratio: (node tally / rootTally tally) !

renderBoundedContainerWrapping: aRenderable on: html upTo: aMaxHeight	html div		with: aRenderable		applying: [ :div | 			( div				setStyleTo: [ :style :constants | 					style						maxHeight: aMaxHeight;						overflowY: #scroll;						fontSize: #smaller					] ) + div addClass bootstrap4 width100Percent			]!

renderContentOn: html	self		renderTreeOn: html;		renderLeavesOn: html!

renderLeavesOn: html	| leavesTable |	html render: (self headingRendering: 'Leaves').	leavesTable := self componentSupplier tableBuilder		addColumn: [ :column | 			column				titled: 'Percent';				rendering: [ :node | self formattedPercentagFor: node ];				applyingToEachCell: [ :cell | cell addClass bootstrap4 textRight ] ];		addColumn: [ :column | 			column				titled: 'Time (ms)';				rendering: [ :node | self timeFor: node ];				applyingToEachCell: [ :cell | cell addClass bootstrap4 textRight ] ];		addColumn: [ :column | 			column				titled: 'Class';				rendering: [ :node | [ :canvas | canvas strong: node method methodClass ] ] ];		addColumn: [ :column | 			column				titled: 'Selector';				rendering: [ :node | node method selector ] ];		buildApplying: [:table | table addClass bootstrap4 tableSmall ].	leavesTable changeContentsTo: self tallyLeavesSorted.	self renderBoundedContainerWrapping: leavesTable on: html upTo: 20 vh!

renderTreeOn: html	html render: (self headingRendering: 'Tree').	self renderBoundedContainerWrapping: (self unorderedListRendering: rootTally receivers) on: html upTo: 40 vh!

tallyLeavesSorted	| dict |	dict := IdentityDictionary new: 100.	rootTally leavesInto: dict fromSender: nil.	^ dict asSortedCollection!

timeFor: node	^ ((self percentageFor: node) * rootTally time) rounded!

unorderedListRendering: tallies	^ (tallies isNil or: [ tallies isEmpty ])		ifTrue: [ [  ] ]		ifFalse: [ self componentSupplier				unorderedListApplying: [ :list | 					(list labelItemsWith: [ :node | self itemRenderingCommandFor: node ])						+							(list								setStyleTo: [ :style | 									style										marginBottom: 0;										paddingTop: 3 px ]) ]				listing: tallies				applyingToEach: [ :listItem | 					listItem						setStyleTo: [ :style | 							style								borderTop: 0;								borderBottom: 0;								borderRight: 0;								paddingBottom: 0 ] ] ]! !
!WPB4MessageTallyWebView categoriesFor: #formattedPercentagFor:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #headingRendering:!private! !
!WPB4MessageTallyWebView categoriesFor: #initializeFor:!initialization!public! !
!WPB4MessageTallyWebView categoriesFor: #itemRenderingCommandFor:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #percentageFor:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #renderBoundedContainerWrapping:on:upTo:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #renderContentOn:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #renderLeavesOn:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #renderTreeOn:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #tallyLeavesSorted!private! !
!WPB4MessageTallyWebView categoriesFor: #timeFor:!public!rendering! !
!WPB4MessageTallyWebView categoriesFor: #unorderedListRendering:!public!rendering! !

!WPB4MessageTallyWebView class methodsFor!

for: aMessageTally	^ self new initializeFor: aMessageTally! !
!WPB4MessageTallyWebView class categoriesFor: #for:!instance creation!public! !

