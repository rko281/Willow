"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #ButtonRenderingComponentStepWebView
	instanceVariableNames: 'button companionView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ButtonRenderingComponentStepWebView guid: (GUID fromString: '{8157a09d-181f-40d9-af62-17b8b99efd22}')!
ButtonRenderingComponentStepWebView comment: 'I''m a step showing the rendering basics.'!
!ButtonRenderingComponentStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!ButtonRenderingComponentStepWebView methodsFor!

currentTime	^ GRPrinter isoTime print: Time now!

description	^ 'This button will "render" content next to it'!

initialize	super initialize.	self initializeCompanionView.	self initializeButton!

initializeButton	button := AsynchronicButtonWebView labeled: 'Click for a change'.	button onTrigger		render: companionView!

initializeCompanionView	companionView := IdentifiedWebView		forSpanNamed: 'Companion'		containing: [ :canvas | canvas strong: self currentTime ]!

renderContentOn: aCanvas	self		renderPanelWrapping:			(self componentSupplier gridBuilder				columnsWidths: #(2 5 4 1);				addContent: '';				addContent: button;				addContent: companionView;				addContent: '';				build)		on: aCanvas.	self		renderCarouselWithAll:			(Array				with: [ :canvas | self renderSourceOf: #initializeCompanionView withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializeButton withBrowseButtonOn: canvas ])		on: aCanvas!

shortName	^ 'A Rendering Button'! !
!ButtonRenderingComponentStepWebView categoriesFor: #currentTime!private/accessing!public! !
!ButtonRenderingComponentStepWebView categoriesFor: #description!accessing!public! !
!ButtonRenderingComponentStepWebView categoriesFor: #initialize!initialization!public! !
!ButtonRenderingComponentStepWebView categoriesFor: #initializeButton!initialization!public! !
!ButtonRenderingComponentStepWebView categoriesFor: #initializeCompanionView!initialization!public! !
!ButtonRenderingComponentStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!ButtonRenderingComponentStepWebView categoriesFor: #shortName!accessing!public! !

