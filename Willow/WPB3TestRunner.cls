"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #WPB3TestRunner
	instanceVariableNames: 'contentView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB3TestRunner guid: (GUID fromString: '{a9d86406-b3c4-4219-a505-46f4b526b88a}')!
WPB3TestRunner comment: 'I''m a web version of the test runner '!
!WPB3TestRunner categoriesForClass!Willow-Playground-TestRunner-Application! !
!WPB3TestRunner methodsFor!

componentSupplierForApplication	^ Bootstrap3ComponentSupplier		withBootstrapLibrary: (self deploymentMode libraryFor: Bootstrap3MetadataLibrary) withoutOptionalTheme		selectLibrary: ((self deploymentMode libraryFor: BootstrapSelectLibrary) using: self language)		datepickerLibrary: ((self deploymentMode libraryFor: BootstrapDatepickerLibrary) using: self language)		typeaheadLibrary: (self deploymentMode libraryFor: BootstrapTypeaheadLibrary) default!

contentView	^ contentView!

initialize	super initialize.	contentView := [ :canvas |  ]!

initializeContainerView	| testResult |	testResult := IdentifiedWebView forDivNamed: 'test-result' containing: WPB3TestRunnerTestResultWebView new.	contentView := GenericContainerWebView		wrapping:			(self componentSupplier gridBuilder				columnsPerRow: 1;				addContent: (HeadingWebView displaying: 'Willow Based Test Runner' withLevel: 1);				addContent: testResult;				addContent: (self toolbarRenderingOnAction: testResult);				addContent: WPTestRunnerSuiteSelectionWebView new;				build)		applying: [ :div | div addClass bootstrap3 container ]!

initialRequest: request	super initialRequest: request.	self initializeContainerView!

jQueryLibrary	^ (self deploymentMode libraryFor: JQuery3MetadataLibrary) default!

requiredLibraries	^ {( self deploymentMode libraryFor: SpinKitMetadataLibrary ) default}!

toolbarRenderingOnAction: testResult	| toolbar |	toolbar := WPB3TestRunnerToolbar new.	toolbar onRunSelectedTestsTrigger		transform: testResult into: SpinKitFlow new;		evaluate: [ self session applicationContext runTests ];		render: testResult.	toolbar onRunProfiledTrigger		transform: testResult into: SpinKitPlane new;		determineBehaviorByEvaluating: [ :response | 			self session applicationContext runTestsProfiled.			response onReturn				open: WPB3TestRunnerMessageTallyDialog new;				render: testResult ].	^ toolbar! !
!WPB3TestRunner categoriesFor: #componentSupplierForApplication!Accessing!public! !
!WPB3TestRunner categoriesFor: #contentView!accessing!public! !
!WPB3TestRunner categoriesFor: #initialize!initialization!public! !
!WPB3TestRunner categoriesFor: #initializeContainerView!private! !
!WPB3TestRunner categoriesFor: #initialRequest:!hooks!public! !
!WPB3TestRunner categoriesFor: #jQueryLibrary!accessing!public! !
!WPB3TestRunner categoriesFor: #requiredLibraries!public!updating! !
!WPB3TestRunner categoriesFor: #toolbarRenderingOnAction:!private! !

!WPB3TestRunner class methodsFor!

applicationTitle	^ 'Test Runner'!

handlerName	^ 'test-runner-bootstrap3'!

sessionClass	^ WPTestRunnerSession! !
!WPB3TestRunner class categoriesFor: #applicationTitle!accessing!public! !
!WPB3TestRunner class categoriesFor: #handlerName!accessing!public! !
!WPB3TestRunner class categoriesFor: #sessionClass!accessing!public! !

