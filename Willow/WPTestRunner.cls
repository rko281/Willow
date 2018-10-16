"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #WPTestRunner
	instanceVariableNames: 'contentView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPTestRunner guid: (GUID fromString: '{d0631ace-53a5-4b1f-95e2-a3733e217101}')!
WPTestRunner comment: 'I''m a web version of the test runner '!
!WPTestRunner categoriesForClass!Willow-Playground-TestRunner-Application! !
!WPTestRunner methodsFor!

componentSupplierForApplication	^ BootstrapComponentSupplier		withBootstrapLibrary: (self deploymentMode libraryFor: Bootstrap3MetadataLibrary) withoutOptionalTheme		selectLibrary: ((self deploymentMode libraryFor: BootstrapSelectLibrary) using: self language)		datepickerLibrary: ((self deploymentMode libraryFor: BootstrapDatepickerLibrary) using: self language)		typeaheadLibrary: (self deploymentMode libraryFor: BootstrapTypeaheadLibrary) default!

contentView	^ contentView!

initialize
	super initialize.	contentView := [ :canvas |  ]!

initializeContainerView	| testResult |	testResult := IdentifiedWebView forDivNamed: 'test-result' containing: WPTestRunnerTestResultWebView new.	contentView := GenericContainerWebView		wrapping:			(self componentSupplier gridBuilder				columnsPerRow: 1;				addContent: (HeadingWebView displaying: 'Willow Based Test Runner' withLevel: 1);				addContent: testResult;				addContent: (self toolbarRenderingOnAction: testResult);				addContent: WPTestRunnerSuiteSelectionWebView new;				build)		applying: [ :div | div addClass bootstrap container ]!

initialRequest: request	super initialRequest: request.	self initializeContainerView!

jQueryLibrary	^ (self deploymentMode libraryFor: JQuery3MetadataLibrary) default!

newComponentSupplier	^ BootstrapComponentSupplier		withBootstrapLibrary: (self deploymentMode libraryFor: Bootstrap3MetadataLibrary) withoutOptionalTheme		selectLibrary: ((self deploymentMode libraryFor: BootstrapSelectLibrary) using: self language)		datepickerLibrary: ((self deploymentMode libraryFor: BootstrapDatepickerLibrary) using: self language)		typeaheadLibrary: (self deploymentMode libraryFor: BootstrapTypeaheadLibrary) default!

requiredLibraries	^ {SpinKitMetadataLibrary default}!

toolbarRenderingOnAction: testResult	| toolbar |	toolbar := WPTestRunnerToolbar new.	toolbar onRunSelectedTestsTrigger		transform: testResult into: SpinKitTripleBounce new;		evaluate: [ self session applicationContext runTests ];		render: testResult.	toolbar onRunProfiledTrigger		transform: testResult into: SpinKitRotatingPlane new;		determineBehaviorByEvaluating: [ :response | 			self session applicationContext runTestsProfiled.			response onReturn				open: WPTestRunnerMessageTallyDialog new;				render: testResult ].	^ toolbar! !
!WPTestRunner categoriesFor: #componentSupplierForApplication!Accessing!public! !
!WPTestRunner categoriesFor: #contentView!accessing!public! !
!WPTestRunner categoriesFor: #initialize!initialization!public! !
!WPTestRunner categoriesFor: #initializeContainerView!private! !
!WPTestRunner categoriesFor: #initialRequest:!hooks!public! !
!WPTestRunner categoriesFor: #jQueryLibrary!accessing!public! !
!WPTestRunner categoriesFor: #newComponentSupplier!accessing!public! !
!WPTestRunner categoriesFor: #requiredLibraries!public!updating! !
!WPTestRunner categoriesFor: #toolbarRenderingOnAction:!private! !

!WPTestRunner class methodsFor!

applicationTitle	^ 'Test Runner'!

handlerName	^ 'test-runner-bootstrap3'!

sessionClass	^ WPTestRunnerSession! !
!WPTestRunner class categoriesFor: #applicationTitle!accessing!public! !
!WPTestRunner class categoriesFor: #handlerName!accessing!public! !
!WPTestRunner class categoriesFor: #sessionClass!accessing!public! !

