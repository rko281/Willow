"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapToggableNavigationBuilder
	instanceVariableNames: 'headers contents tabHeaderCommand tabTitleCommand firstTabHeaderCommand firstTitleCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapToggableNavigationBuilder guid: (GUID fromString: '{47ebeb67-99ae-4380-8228-da5406c39966}')!
BootstrapToggableNavigationBuilder comment: 'Add quick, dynamic tab functionality to transition through panes of local content, even via dropdown menus. Nested tabs are not supported.'!
!BootstrapToggableNavigationBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapToggableNavigationBuilder methodsFor!

addNavigationHeadedBy: aRenderable containing: aNavigationContent	| identifiedContent |	identifiedContent := self identifiedViewContaining: aNavigationContent.	headers		ifEmpty: [ headers add: ( self firstTabTitleWith: aRenderable linkedTo: identifiedContent ) ]		ifNotEmpty: [ headers add: ( self tabTitleWith: aRenderable linkedTo: identifiedContent ) ].	contents add: identifiedContent!

buildApplying: aCommandToComponent	AssertionChecker		enforce: [ headers size > 1 ]		because: 'It makes no sense to build a toggable navigation component with less than two panes'.	^ [ :canvas | 	self renderTabListOn: canvas applying: aCommandToComponent asWebComponentCommand.	self renderTabContentOn: canvas ]!

dataToggleValue	^ self subclassResponsibility!

firstTabTitleWith: aRenderable linkedTo: identifiedContent	^ self tabTitleWith: aRenderable linkedTo: identifiedContent applying: firstTitleCommand!

identifiedViewContaining: aNavigationContent	| isFirstTab |	"The first tab content needs to be styled as active in order to function properly"	isFirstTab := contents isEmpty.	^ IdentifiedWebView		forDivNamed: self dataToggleValue		containing: aNavigationContent		applying: [ :div :constants | 			( div setARIARoleTo: #tabPanel ) + div addClass bootstrapCommon tabPane				+ ( div when: [ isFirstTab ] apply: div addClass bootstrapCommon active )			]!

initialize	super initialize.	headers := OrderedCollection new.	contents := OrderedCollection new.	firstTabHeaderCommand := [ :listItem | listItem addClass bootstrapCommon active ]		asWebComponentCommand.	firstTitleCommand := [  ] asWebComponentCommand.	tabHeaderCommand := [  ] asWebComponentCommand.	tabTitleCommand := [  ] asWebComponentCommand!

navigationTypeCommand	^ self subclassResponsibility!

renderFirstTabHeaderOn: canvas	"The first header must be rendered specially because needs the active style"	canvas listItem		with: headers first		applying:			[ :listItem :constants | tabHeaderCommand + firstTabHeaderCommand + ( listItem setARIARoleTo: #presentation ) ]!

renderRemainingTabHeadersOn: aCanvas	headers copyWithoutFirst		do: [ :header | 			aCanvas listItem				with: header				applying: [ :listItem :constants | tabHeaderCommand + ( listItem setARIARoleTo: #presentation ) ]			]!

renderTabContentOn: aCanvas	aCanvas div with: contents applying: [ :div | div addClass bootstrapCommon tabContent ]!

renderTabListOn: aCanvas applying: aCommantToTabList	(self tabListOn: aCanvas)		with: [ self renderFirstTabHeaderOn: aCanvas.			self renderRemainingTabHeadersOn: aCanvas ]		applying: aCommantToTabList!

tabListOn: canvas	^ canvas unorderedList		apply:				[ :list :constants | list addClass bootstrapCommon nav + self navigationTypeCommand + ( list setARIARoleTo: #tabList ) ];		yourself!

tabTitleWith: aRenderable linkedTo: identifiedContent	^ self tabTitleWith: aRenderable linkedTo: identifiedContent applying: [  ]!

tabTitleWith: aRenderable linkedTo: identifiedContent applying: aCommand	^ [ :canvas | 	| titleLink |	titleLink := canvas anchor.	identifiedContent identifyIn: canvas.	titleLink		url: ( '#<1s>' expandMacrosWith: identifiedContent identifier );		with: aRenderable			applying: [ :link :constants | 			tabTitleCommand + aCommand + ( link setARIARoleTo: #tab )				+ ( link setData: constants >> #bootstrap >> #toggle to: self dataToggleValue )				+ ( link setARIAAttribute: 'control' to: identifiedContent identifier )			]	]! !
!BootstrapToggableNavigationBuilder categoriesFor: #addNavigationHeadedBy:containing:!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #buildApplying:!Building!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #dataToggleValue!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #firstTabTitleWith:linkedTo:!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #identifiedViewContaining:!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #navigationTypeCommand!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderFirstTabHeaderOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderRemainingTabHeadersOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderTabContentOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #renderTabListOn:applying:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #tabListOn:!private / Rendering!public! !
!BootstrapToggableNavigationBuilder categoriesFor: #tabTitleWith:linkedTo:!private! !
!BootstrapToggableNavigationBuilder categoriesFor: #tabTitleWith:linkedTo:applying:!private! !

