"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #FormTriggeringStepWebView
	instanceVariableNames: 'button input'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FormTriggeringStepWebView guid: (GUID fromString: '{4b70f444-07b9-4ab1-a95a-68b82d9a6def}')!
FormTriggeringStepWebView comment: 'I''m a step showing a form triggering.'!
!FormTriggeringStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!FormTriggeringStepWebView methodsFor!

askDeveloper: aQuestion

	^ UIManager default textEntry: 'aQuestion'!

description	^ 'This button "submits" the form'!

initialize	super initialize.	self initializeField.	self initializeButton!

initializeButton	button := AsynchronicButtonWebView labeled: 'Ask it!!'.	button onTrigger		serializeContainerForm;		disable;		determineBehaviorByEvaluating: [ :response | | answer |			answer := self askDeveloper: input contents.			response onReturn				setValueTo: answer thenTriggerChangeOf: input ]!

initializeField	input := TextFieldWebView		 singleLineTriggeringOnChangeApplying: [ :theInput |  ]								 !

renderContentOn: aCanvas	self renderPanelWrapping: [ :canvas | self renderFormOn: canvas ] on: aCanvas.	self		renderCarouselWithAll:			(Array				with: [ :canvas | self renderSourceOf: #initializeField withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #initializeButton withBrowseButtonOn: canvas ]				with: [ :canvas | self renderSourceOf: #renderFormOn: withBrowseButtonOn: canvas ])		on: aCanvas!

renderFormOn: aCanvas	aCanvas form		doNotSubmit;		with: [			input identifyIn: aCanvas.			self renderQuestionComponentsOn: aCanvas ] !

renderQuestionComponentsOn: aCanvas	aCanvas		render:			(self componentSupplier gridBuilder				columnsWidths: #(2 2 4 2 2);				addContent: '';				addContent: 'Enter a question';				addContent: input;				addContent: button;				addContent: '';				build)!

shortName	^ 'Form To Submit'! !
!FormTriggeringStepWebView categoriesFor: #askDeveloper:!private/rendering!public! !
!FormTriggeringStepWebView categoriesFor: #description!accessing!public! !
!FormTriggeringStepWebView categoriesFor: #initialize!initialization!public! !
!FormTriggeringStepWebView categoriesFor: #initializeButton!initialization!public! !
!FormTriggeringStepWebView categoriesFor: #initializeField!initialization!public! !
!FormTriggeringStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!FormTriggeringStepWebView categoriesFor: #renderFormOn:!private/rendering!public! !
!FormTriggeringStepWebView categoriesFor: #renderQuestionComponentsOn:!private/rendering!public! !
!FormTriggeringStepWebView categoriesFor: #shortName!accessing!public! !

