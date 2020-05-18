"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPB3MessageTallyWebView
	instanceVariableNames: 'rootTally'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB3MessageTallyWebView guid: (GUID fromString: '{317db14f-b1a4-4d0f-8f6e-4f4937af45a9}')!
WPB3MessageTallyWebView comment: 'I''m a web view showing a message tally result'!
!WPB3MessageTallyWebView categoriesForClass!Willow-Playground-TestRunner-WebViews-Bootstrap-3! !
!WPB3MessageTallyWebView methodsFor!

formattedPercentagFor: node	^ (GRNumberPrinter new		precision: 2;		yourself) , '%' print: (self percentageFor: node) value!

headingRendering: aRenderable	^ HeadingWebView displaying: aRenderable withLevel: 4 applying: [ :heading | heading addClass bootstrap3 textInfo ]!

initializeFor: aMessageTally	rootTally := aMessageTally!

itemRenderingCommandFor: node	^ [ :html | 	html span with: (self formattedPercentagFor: node) applying: [ :label | label addClass bootstrap3 label + label addClass bootstrap3 labelPrimary ].	html space.	html span		with: [ html				render: (self timeFor: node);				space;				render: 'ms' ]		applying: [ :label | label addClass bootstrap3 label + label addClass bootstrap3 labelDefault ].	html		space;		render: node method methodClass;		space;		render: '>>';		space;		render: node method selector;		render: (self unorderedListRendering: node receivers) ]!

percentageFor: node	^ Percentage ratio: (node tally / rootTally tally) !

renderBoundedContainerWrapping: aRenderable on: html upTo: aMaxHeight	html div		with: aRenderable		applying: [ :div | 			(div				setStyleTo: [ :style :constants | 					style						maxHeight: aMaxHeight;						overflowY: #scroll ]) + div addClass bootstrap3 small ]!

renderContentOn: html	self		renderTreeOn: html;		renderLeavesOn: html!

renderLeavesOn: html	| leavesTable |	html render: (self headingRendering: 'Leaves').	leavesTable := self componentSupplier tableBuilder		addColumn: [ :column | 			column				titled: 'Percent';				rendering: [ :node | self formattedPercentagFor: node ];				applyingToEachCell: [ :cell | cell addClass bootstrap3 textRight ] ];		addColumn: [ :column | 			column				titled: 'Time (ms)';				rendering: [ :node | self timeFor: node ];				applyingToEachCell: [ :cell | cell addClass bootstrap3 textRight ] ];		addColumn: [ :column | 			column				titled: 'Class';				rendering: [ :node | [ :canvas | canvas strong: node method methodClass ] ] ];		addColumn: [ :column | 			column				titled: 'Selector';				rendering: [ :node | node method selector ] ];		build.	leavesTable changeContentsTo: self tallyLeavesSorted.	self renderBoundedContainerWrapping: leavesTable on: html upTo: 20 vh!

renderTreeOn: html	html render: (self headingRendering: 'Tree').	self renderBoundedContainerWrapping: (self unorderedListRendering: rootTally receivers) on: html upTo: 40 vh!

tallyLeavesSorted	| dict |	dict := IdentityDictionary new: 100.	rootTally leavesInto: dict fromSender: nil.	^ dict asSortedCollection!

timeFor: node	^ ((self percentageFor: node) * rootTally time) rounded!

unorderedListRendering: tallies	^ (tallies isNil or: [ tallies isEmpty ])		ifTrue: [ [  ] ]		ifFalse: [ self componentSupplier				unorderedListApplying: [ :list | 					(list labelItemsWith: [ :node | self itemRenderingCommandFor: node ])						+							(list								setStyleTo: [ :style | 									style										marginBottom: 0;										paddingTop: 3 px ]) ]				listing: tallies				applyingToEach: [ :listItem | 					listItem						setStyleTo: [ :style | 							style								borderTop: 0;								borderBottom: 0;								borderRight: 0;								paddingBottom: 0 ] ] ]! !
!WPB3MessageTallyWebView categoriesFor: #formattedPercentagFor:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #headingRendering:!private! !
!WPB3MessageTallyWebView categoriesFor: #initializeFor:!initialization!public! !
!WPB3MessageTallyWebView categoriesFor: #itemRenderingCommandFor:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #percentageFor:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #renderBoundedContainerWrapping:on:upTo:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #renderContentOn:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #renderLeavesOn:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #renderTreeOn:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #tallyLeavesSorted!private! !
!WPB3MessageTallyWebView categoriesFor: #timeFor:!public!rendering! !
!WPB3MessageTallyWebView categoriesFor: #unorderedListRendering:!public!rendering! !

!WPB3MessageTallyWebView class methodsFor!

for: aMessageTally	^ self new initializeFor: aMessageTally! !
!WPB3MessageTallyWebView class categoriesFor: #for:!instance creation!public! !

