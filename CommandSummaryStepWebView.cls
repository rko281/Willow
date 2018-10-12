"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #CommandSummaryStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CommandSummaryStepWebView guid: (GUID fromString: '{33bfc426-b8a0-477b-b3bb-1ecde8057507}')!
CommandSummaryStepWebView comment: 'I''m a step showing a command summary.'!
!CommandSummaryStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!CommandSummaryStepWebView methodsFor!

anchorToBrowse: method	| anchor |	anchor := self componentSupplier asynchronicLinkActingAsButtonLabeled: method selector applying: [ :button | button addClass bootstrap buttonLink ].	anchor onTrigger evaluate: [ method browse ].	^ anchor!

availableCommands	^ WebComponentCommandBuilder localMethods		sorted: [ :a :b | a selector <= b selector ]!

description	^ 'There are many commands to choose from'!

renderContentOn: aCanvas	| anchors list |	anchors := self availableCommands collect: [ :method | self anchorToBrowse: method ].	list := UnorderedListWebView		applying: [ :theList |  ]		listing: anchors		applyingToEach: [ :theItem |  ].	self renderPanelWrapping: list on: aCanvas!

shortName	^ 'Command Summary'! !
!CommandSummaryStepWebView categoriesFor: #anchorToBrowse:!private/accessing!public! !
!CommandSummaryStepWebView categoriesFor: #availableCommands!private/accessing!public! !
!CommandSummaryStepWebView categoriesFor: #description!accessing!public! !
!CommandSummaryStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!CommandSummaryStepWebView categoriesFor: #shortName!accessing!public! !

