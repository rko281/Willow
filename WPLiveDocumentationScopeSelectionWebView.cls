"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WPLiveDocumentationScopeSelectionWebView
	instanceVariableNames: 'identifiedBehaviorSelection behaviorsListBox packagesDropdown'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentationScopeSelectionWebView guid: (GUID fromString: '{6fc0b4a3-414a-43b0-bd17-2b9165efcb5e}')!
WPLiveDocumentationScopeSelectionWebView comment: 'I''m a web view responsible for selecting the current scope (class or trait to navigate)'!
!WPLiveDocumentationScopeSelectionWebView categoriesForClass!Willow-Playground-LiveDocs-WebViews! !
!WPLiveDocumentationScopeSelectionWebView methodsFor!

initialize	super initialize.	self		initializeIdentifiedBehaviorSelection;		initializePackagesDropdown;		initializeBehaviorsListBox!

initializeBehaviorsListBox	behaviorsListBox := self componentSupplier singleSelectionListBoxDisplayingAtOnce: 30 applying: [ :listBox | listBox labelItemsWith: [ :class | class name ] ].	behaviorsListBox onTrigger		serializeIt;		evaluate: [ behaviorsListBox withCurrentSelectionDo: [ :selectedClass | self session applicationContext setSelectedBehaviorTo: selectedClass ] ]!

initializeIdentifiedBehaviorSelection	identifiedBehaviorSelection := IdentifiedWebView		forDivNamed: 'behavior-selection'		containing: [ :canvas | 			canvas				render:					(self componentSupplier						delayedViewShowing: SpinKitCircle new						whileEvaluating: [ behaviorsListBox allowAnyOf: self session applicationContext availableBehaviors ]						thenRendering: (self labeledViewDisplaying: 'Classes & Traits' boundTo: behaviorsListBox)) ]!

initializePackagesDropdown	packagesDropdown := self componentSupplier dropdownListApplying: [ :dropdown | (dropdown labelItemsWith: [ :package | package name ]) + BootstrapSelectLiveSearchCommand default ].	packagesDropdown onTrigger		serializeIt;		evaluate: [ packagesDropdown withCurrentSelectionDo: [ :selectedPackage | self session applicationContext setSelectedPackageTo: selectedPackage ] ];		render: identifiedBehaviorSelection!

labeledViewDisplaying: aLabel boundTo: aField	^ BootstrapLabeledWebView		displaying: aLabel		applying: [ :label | label addClass bootstrap screenReaderOnly ]		boundTo: aField		applying: [  ]!

onBehaviorSelectedTrigger	^ behaviorsListBox onTrigger !

renderContentOn: html	html		render:			(self componentSupplier gridBuilder				columnsPerRow: 1;				addContent:					(self componentSupplier						fieldSetContaining: (self componentSupplier delayedViewShowing: SpinKitCircle new whileEvaluating: [ packagesDropdown allowAnyOf: self session applicationContext availablePackages ] thenRendering: packagesDropdown)						applying: [  ]						withLegend: 'Packages'						applying: [  ]);				addContent: [ :canvas | canvas horizontalRule ];				addContent:					(self componentSupplier						fieldSetContaining: identifiedBehaviorSelection						applying: [  ]						withLegend: 'Classes & Traits'						applying: [  ]);				build)! !
!WPLiveDocumentationScopeSelectionWebView categoriesFor: #initialize!initialization!public! !
!WPLiveDocumentationScopeSelectionWebView categoriesFor: #initializeBehaviorsListBox!initialization!public! !
!WPLiveDocumentationScopeSelectionWebView categoriesFor: #initializeIdentifiedBehaviorSelection!initialization!public! !
!WPLiveDocumentationScopeSelectionWebView categoriesFor: #initializePackagesDropdown!initialization!public! !
!WPLiveDocumentationScopeSelectionWebView categoriesFor: #labeledViewDisplaying:boundTo:!private! !
!WPLiveDocumentationScopeSelectionWebView categoriesFor: #onBehaviorSelectedTrigger!configuring!public! !
!WPLiveDocumentationScopeSelectionWebView categoriesFor: #renderContentOn:!public!rendering! !

