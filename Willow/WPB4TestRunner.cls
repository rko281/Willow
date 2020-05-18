"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #WPB4TestRunner
	instanceVariableNames: 'contentView'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WPB4TestRunner guid: (GUID fromString: '{f9b31a7f-d1a6-4bce-9654-c8f629da5439}')!
WPB4TestRunner comment: 'I''m a Bootstrap 4 based version of the test runner'!
!WPB4TestRunner categoriesForClass!Willow-Playground-TestRunner-Application! !
!WPB4TestRunner methodsFor!

componentSupplierForApplication	^ Bootstrap4ComponentSupplier		usingLibraries:			{(self deploymentMode libraryFor: Bootstrap4MetadataLibrary)				withoutBundledDependencies.			(self deploymentMode libraryFor: BootstrapSelectLibrary)				using: self language.			(self deploymentMode libraryFor: BootstrapDatepickerLibrary)				using: self language.			(self deploymentMode libraryFor: BootstrapTypeaheadLibrary) default}!

contentView	^ contentView!

initialize	super initialize.	contentView := [ :canvas |  ]!

initializeContainerView	| testResult |	testResult := IdentifiedWebView		forDivNamed: 'test-result'		containing: WPB4TestRunnerTestResultWebView new.	contentView := GenericContainerWebView		wrapping:			( self componentSupplier gridBuilder				columnsPerRow: 1;				addContent: ( HeadingWebView displaying: 'Willow Based Test Runner' withLevel: 1 );				addContent: testResult;				addContent: ( self toolbarRenderingOnAction: testResult );				addContent: WPTestRunnerSuiteSelectionWebView new;				build )		applying: [ :div | div addClass bootstrap4 container ]!

initialRequest: request	super initialRequest: request.	self initializeContainerView!

jQueryLibrary	^ (self deploymentMode libraryFor: JQuery3MetadataLibrary) default!

requiredLibraries	^ {( self deploymentMode libraryFor: SpinKitMetadataLibrary ) default}!

toolbarRenderingOnAction: testResult	| toolbar |	toolbar := WPB4TestRunnerToolbar new.	toolbar onRunSelectedTestsTrigger		transform: testResult into: SpinKitFlow new;		evaluate: [ self session applicationContext runTests ];		render: testResult.	toolbar onRunProfiledTrigger		transform: testResult into: SpinKitPlane new;		determineBehaviorByEvaluating: [ :response | 			self session applicationContext runTestsProfiled.			response onReturn				open: WPB4TestRunnerMessageTallyDialog new;				render: testResult ].	^ toolbar! !
!WPB4TestRunner categoriesFor: #componentSupplierForApplication!Accessing!public! !
!WPB4TestRunner categoriesFor: #contentView!accessing!public! !
!WPB4TestRunner categoriesFor: #initialize!initialization!public! !
!WPB4TestRunner categoriesFor: #initializeContainerView!private! !
!WPB4TestRunner categoriesFor: #initialRequest:!hooks!public! !
!WPB4TestRunner categoriesFor: #jQueryLibrary!accessing!public! !
!WPB4TestRunner categoriesFor: #requiredLibraries!public!updating! !
!WPB4TestRunner categoriesFor: #toolbarRenderingOnAction:!private! !

!WPB4TestRunner class methodsFor!

applicationTitle	^ 'Test Runner [Bootstrap 4]'!

handlerName	^ 'test-runner-bootstrap4'!

sessionClass	^ WPTestRunnerSession! !
!WPB4TestRunner class categoriesFor: #applicationTitle!accessing!public! !
!WPB4TestRunner class categoriesFor: #handlerName!accessing!public! !
!WPB4TestRunner class categoriesFor: #sessionClass!accessing!public! !

