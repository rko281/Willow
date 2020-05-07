"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #WPLiveDocumentation
	instanceVariableNames: 'contentView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPLiveDocumentation guid: (GUID fromString: '{7721d0ab-8975-42e1-bfb3-64bf67def747}')!
WPLiveDocumentation comment: 'I''m a web version of the Pharo live documentation'!
!WPLiveDocumentation categoriesForClass!Willow-Playground-LiveDocs-Application! !
!WPLiveDocumentation methodsFor!

componentSupplierForApplication	^ Bootstrap3ComponentSupplier		withBootstrapLibrary: (self deploymentMode libraryFor: Bootstrap3MetadataLibrary) withoutOptionalTheme		selectLibrary: ((self deploymentMode libraryFor: BootstrapSelectLibrary) using: self language)		datepickerLibrary: ((self deploymentMode libraryFor: BootstrapDatepickerLibrary) using: self language)		typeaheadLibrary: (self deploymentMode libraryFor: BootstrapTypeaheadLibrary) default!

contentView	^ contentView!

initialize	super initialize.	contentView := [ :canvas |  ]!

initializeContainerView	| behaviorDetails scopeSelection |	behaviorDetails := IdentifiedWebView		forDivNamed: 'behavior-details'		containing: WPLiveDocumentationBehaviorWebView new		applying: [ :div | 			div				setStyleTo: [ :style | 					style						maxHeight: 100 vh;						overflowY: #scroll					]			].	scopeSelection := WPLiveDocumentationScopeSelectionWebView new.	scopeSelection onBehaviorSelectedTrigger		show: SpinKitFlow new		whileCallingServerToRender: behaviorDetails.	contentView := GenericContainerWebView		wrapping:			( self componentSupplier gridBuilder				columnsWidths: #(3 9);				addContent: scopeSelection;				addContent: behaviorDetails;				build )		applying: [ :div | div addClass bootstrap3 container ]!

initialRequest: request	super initialRequest: request.	self initializeContainerView!

jQueryLibrary	^ (self deploymentMode libraryFor: JQuery3MetadataLibrary) default!

requiredLibraries	^ {( self deploymentMode libraryFor: SpinKitMetadataLibrary ) default}! !
!WPLiveDocumentation categoriesFor: #componentSupplierForApplication!Accessing!public! !
!WPLiveDocumentation categoriesFor: #contentView!Accessing!public! !
!WPLiveDocumentation categoriesFor: #initialize!initialization!public! !
!WPLiveDocumentation categoriesFor: #initializeContainerView!private! !
!WPLiveDocumentation categoriesFor: #initialRequest:!hooks!public! !
!WPLiveDocumentation categoriesFor: #jQueryLibrary!Accessing!public! !
!WPLiveDocumentation categoriesFor: #requiredLibraries!public!updating! !

!WPLiveDocumentation class methodsFor!

applicationTitle	^ 'Pharo Live Documentation'!

handlerName	^ 'live-docs'!

sessionClass	^ WPLiveDocumentationSession! !
!WPLiveDocumentation class categoriesFor: #applicationTitle!accessing!public! !
!WPLiveDocumentation class categoriesFor: #handlerName!accessing!public! !
!WPLiveDocumentation class categoriesFor: #sessionClass!accessing!public! !

