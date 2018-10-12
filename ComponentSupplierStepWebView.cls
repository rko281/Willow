"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ComponentSupplierStepWebView
	instanceVariableNames: 'button dropdown field'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentSupplierStepWebView guid: (GUID fromString: '{03dde6b6-8637-416d-8e24-8a63c20539ef}')!
ComponentSupplierStepWebView comment: 'I''m a step showing the component supplier.'!
!ComponentSupplierStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ComponentSupplierStepWebView methodsFor!

description	^ 'The supplier provides access to customized components'!

initialize	super initialize.	self initializeButton.	self initializeDropdown.	self initializeField!

initializeButton	button := self componentSupplier		asynchronicButtonLabeled: 'I am a button'		applying: [ :theButton |  ]!

initializeDropdown	dropdown := self componentSupplier		dropdownListApplying: [ :theDropdown |  ].	dropdown allowAnyOf: self supplyingSelectors!

initializeField	field := self componentSupplier dateFieldApplying: [ :theField |  ] !

renderContentOn: aCanvas	self		renderPanelWrapping:			(self componentSupplier gridBuilder				columnsWidths: #(4 4 4);				addContent: button;				addContent: dropdown;				addContent: field;				build)		on: aCanvas.	self		renderCarouselWithAll:			(Array				with: [ :canvas | self renderSourceOf: #initializeButton withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializeDropdown withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializeField withBrowseButtonOn: canvas ])		on: aCanvas!

shortName	^ 'Component Supplier'!

supplyingSelectors	^ (self componentSupplier class localMethods		select: [ :method | method category = 'Supplying' ]		thenCollect: #selector) sorted! !
!ComponentSupplierStepWebView categoriesFor: #description!accessing!public! !
!ComponentSupplierStepWebView categoriesFor: #initialize!initialization!public! !
!ComponentSupplierStepWebView categoriesFor: #initializeButton!initialization!public! !
!ComponentSupplierStepWebView categoriesFor: #initializeDropdown!initialization!public! !
!ComponentSupplierStepWebView categoriesFor: #initializeField!initialization!public! !
!ComponentSupplierStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ComponentSupplierStepWebView categoriesFor: #shortName!accessing!public! !
!ComponentSupplierStepWebView categoriesFor: #supplyingSelectors!private/accessing!public! !

