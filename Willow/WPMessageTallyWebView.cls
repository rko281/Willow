﻿"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPMessageTallyWebView
	instanceVariableNames: 'rootTally'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPMessageTallyWebView guid: (GUID fromString: '{5ca114cc-c068-47ca-a6d3-5de49e9b1ad8}')!
WPMessageTallyWebView comment: 'I''m a web view showing a message tally result'!
!WPMessageTallyWebView categoriesForClass!Willow-Playground-TestRunner-WebViews! !
!WPMessageTallyWebView methodsFor!

formattedPercentagFor: node

headingRendering: aRenderable

initializeFor: aMessageTally

itemRenderingCommandFor: node

percentageFor: node

renderBoundedContainerWrapping: aRenderable on: html upTo: aMaxHeight

renderContentOn: html

renderLeavesOn: html

renderTreeOn: html


tallyLeavesSorted


timeFor: node

unorderedListRendering: tallies
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

for: aMessageTally
!WPMessageTallyWebView class categoriesFor: #for:!instance creation!public! !
