"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPMessageTallyWebView
	instanceVariableNames: 'rootTally'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPMessageTallyWebView guid: (GUID fromString: '{5ca114cc-c068-47ca-a6d3-5de49e9b1ad8}')!
WPMessageTallyWebView comment: 'I''m a web view showing a message tally result'!
!WPMessageTallyWebView categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPMessageTallyWebView methodsFor!

formattedPercentagFor: node	^ (GRNumberPrinter new		precision: 2;		yourself) , '%' print: (self percentageFor: node) value!

headingRendering: aRenderable	^ HeadingWebView displaying: aRenderable withLevel: 4 applying: [ :heading | heading addClass bootstrap textInfo ]!

initializeFor: aMessageTally	rootTally := aMessageTally!

itemRenderingCommandFor: node	^ [ :html | 	html span with: (self formattedPercentagFor: node) applying: [ :label | label addClass bootstrap label + label addClass bootstrap labelPrimary ].	html space.	html span		with: [ html				render: (self timeFor: node);				space;				render: 'ms' ]		applying: [ :label | label addClass bootstrap label + label addClass bootstrap labelDefault ].	html		space;		render: node method methodClass;		space;		render: '>>';		space;		render: node method selector;		render: (self unorderedListRendering: node receivers) ]!

percentageFor: node	^ Percentage ratio: (node tally / rootTally tally) !

renderBoundedContainerWrapping: aRenderable on: html upTo: aMaxHeight	html div		with: aRenderable		applying: [ :div | 			(div				setStyleTo: [ :style :constants | 					style						maxHeight: aMaxHeight;						overflowY: #scroll ]) + div addClass bootstrap small ]!

renderContentOn: html	self		renderTreeOn: html;		renderLeavesOn: html!

renderLeavesOn: html	| leavesTable |	html render: (self headingRendering: 'Leaves').	leavesTable := self componentSupplier tableBuilder		addColumn: [ :column | 			column				titled: 'Percent';				rendering: [ :node | self formattedPercentagFor: node ];				applyingToEachCell: [ :cell | cell addClass bootstrap textRight ] ];		addColumn: [ :column | 			column				titled: 'Time (ms)';				rendering: [ :node | self timeFor: node ];				applyingToEachCell: [ :cell | cell addClass bootstrap textRight ] ];		addColumn: [ :column | 			column				titled: 'Class';				rendering: [ :node | [ :canvas | canvas strong: node method methodClass ] ] ];		addColumn: [ :column | 			column				titled: 'Selector';				rendering: [ :node | node method selector ] ];		build.	leavesTable changeContentsTo: self tallyLeavesSorted.	self renderBoundedContainerWrapping: leavesTable on: html upTo: 20 vh!

renderTreeOn: html
	html render: (self headingRendering: 'Tree').	self renderBoundedContainerWrapping: (self unorderedListRendering: rootTally receivers) on: html upTo: 40 vh!

tallyLeavesSorted	| dict |
	dict := IdentityDictionary new: 100.	rootTally leavesInto: dict fromSender: nil.	^ dict asSortedCollection!

timeFor: node	^ ((self percentageFor: node) * rootTally time) rounded!

unorderedListRendering: tallies	^ (tallies isNil or: [ tallies isEmpty ])		ifTrue: [ [  ] ]		ifFalse: [ self componentSupplier				unorderedListApplying: [ :list | 					(list labelItemsWith: [ :node | self itemRenderingCommandFor: node ])						+							(list								setStyleTo: [ :style | 									style										marginBottom: 0;										paddingTop: 3 px ]) ]				listing: tallies				applyingToEach: [ :listItem | 					listItem						setStyleTo: [ :style | 							style								borderTop: 0;								borderBottom: 0;								borderRight: 0;								paddingBottom: 0 ] ] ]! !
!WPMessageTallyWebView categoriesFor: #formattedPercentagFor:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #headingRendering:!private! !
!WPMessageTallyWebView categoriesFor: #initializeFor:!initialization!public! !
!WPMessageTallyWebView categoriesFor: #itemRenderingCommandFor:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #percentageFor:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #renderBoundedContainerWrapping:on:upTo:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #renderContentOn:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #renderLeavesOn:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #renderTreeOn:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #tallyLeavesSorted!private! !
!WPMessageTallyWebView categoriesFor: #timeFor:!public!rendering! !
!WPMessageTallyWebView categoriesFor: #unorderedListRendering:!public!rendering! !

!WPMessageTallyWebView class methodsFor!

for: aMessageTally	^ self new initializeFor: aMessageTally! !
!WPMessageTallyWebView class categoriesFor: #for:!instance creation!public! !

