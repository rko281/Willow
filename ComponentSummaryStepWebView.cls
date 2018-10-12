"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ComponentSummaryStepWebView
	instanceVariableNames: 'checkbox image dropdown'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ComponentSummaryStepWebView guid: (GUID fromString: '{120e23f0-5e1b-4f78-8d75-69a5aaa07053}')!
ComponentSummaryStepWebView comment: 'I''m a step showing a componente summary.'!
!ComponentSummaryStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ComponentSummaryStepWebView methodsFor!

description	^ 'There are many more components to choose from'!

initialize	super initialize.	self initializeDropDownListView.	self initializeCheckboxView.	self initializeImageView!

initializeCheckboxView	checkbox := CheckboxWebView		labeled: 'Make a choice'		onModel: 10 offModel: -10		applying: [ :theCheckbox |  ]!

initializeDropDownListView	dropdown := DropDownListWebView applying: [ :theDropdown |  ].		dropdown allowAnyOf:		#('Smartphone' 'Tablet' 'Destkop' 'Notebook' 'Arduino')!

initializeImageView	image := ImageWebView		locatedAt:			Smalltalks2017FileMetadataLibrary / #smalltalk80bookJpg		applying: [ :theImage |  ]!

renderContentOn: aCanvas	self		renderPanelWrapping:			(self componentSupplier gridBuilder				columnsWidths: #(1 3 3 3 2);				addContent: '';				addContent: dropdown;				addContent: checkbox;				addContent: image;				addContent: '';				build)		on: aCanvas.	self		renderCarouselWithAll:			(Array				with: [ :canvas | self renderSourceOf: #initializeDropDownListView withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializeCheckboxView withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializeImageView withBrowseButtonOn: canvas ])		on: aCanvas!

shortName	^ 'Component Summary'! !
!ComponentSummaryStepWebView categoriesFor: #description!accessing!public! !
!ComponentSummaryStepWebView categoriesFor: #initialize!initialization!public! !
!ComponentSummaryStepWebView categoriesFor: #initializeCheckboxView!initialization!public! !
!ComponentSummaryStepWebView categoriesFor: #initializeDropDownListView!initialization!public! !
!ComponentSummaryStepWebView categoriesFor: #initializeImageView!initialization!public! !
!ComponentSummaryStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ComponentSummaryStepWebView categoriesFor: #shortName!accessing!public! !

