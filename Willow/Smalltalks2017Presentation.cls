"Filed out from Dolphin Smalltalk 7"!

WillowApplication subclass: #Smalltalks2017Presentation
	instanceVariableNames: 'currentStepView currentStepIndex stepViews'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Smalltalks2017Presentation guid: (GUID fromString: '{d79b9a71-04a3-40c9-a23a-a452cf5dca0d}')!
Smalltalks2017Presentation comment: 'I''m the presentation :)'!
!Smalltalks2017Presentation categoriesForClass!Willow-Playground-Smalltalks2017-Application! !
!Smalltalks2017Presentation methodsFor!

componentSupplierForApplication	^ Bootstrap3ComponentSupplier		withBootstrapLibrary: (self deploymentMode libraryFor: Bootstrap3MetadataLibrary) withoutOptionalTheme		selectLibrary: ((self deploymentMode libraryFor: BootstrapSelectLibrary) using: self language)		datepickerLibrary: ((self deploymentMode libraryFor: BootstrapDatepickerLibrary) using: self language)		typeaheadLibrary: (self deploymentMode libraryFor: BootstrapTypeaheadLibrary) new!

contentView	^ currentStepView!

initializeCurrentStepView	currentStepView := IdentifiedWebView		forDivNamed: 'currentStep'		containing: [ :canvas | self renderCurrentStepOn: canvas ]		applying: [ :div | div addClass smalltalks2017 presentationArea ]!

initializeStepViews	stepViews := OrderedCollection new		add: IntroductionStepWebView new;		add: RenderingStepWebView new;		add: NonInteractiveButtonStepWebView new;		add: ButtonExecutingOnClientStepWebView new;		add: ButtonEvaluatingBlockStepWebView new;		add: ButtonRenderingComponentStepWebView new;		add: FormTriggeringStepWebView new;		add: ComponentSummaryStepWebView new;		add: StyledButtonStepWebView new;		add: ComponentWithCommandsStepWebView new;		add: CommandSummaryStepWebView new;		add: AdvancedComponentsExampleStepWebView new;		add: ComponentSupplierStepWebView new;		add: PlaygroundApplicationsStepWebView new;		add: ScreenshotsStepWebView new;		add: ProjectLocationStepWebView new;		yourself!

initialRequest: request	super initialRequest: request.		self initializeStepViews.	currentStepIndex := 1.	self initializeCurrentStepView!

jQueryLibrary	^(self deploymentMode libraryFor: JQuery3MetadataLibrary) default!

nextStepButton	| button |	button := self componentSupplier		asynchronicButtonLabeled: [ :canvas | 			canvas				render: self nextStepView shortName;				space;				render: ( Bootstrap3IconWebView representing: Glyphicons chevronRight )			]		applying:			[ :theButton | theButton addClass bootstrap3 pullRight + theButton addClass bootstrap3 buttonDefault ].	button onTrigger		evaluate: [ currentStepIndex := self nextStepIndex ];		render: currentStepView.	^ button!

nextStepIndex	^ currentStepIndex + 1 min: stepViews size!

nextStepView	^ stepViews at: self nextStepIndex!

previousStepButton	| button |	button := self componentSupplier		asynchronicButtonLabeled: [ :canvas | 			canvas				render: ( Bootstrap3IconWebView representing: Glyphicons chevronLeft );				space;				render: self previousStepView shortName			]		applying:			[ :theButton | theButton addClass bootstrap3 pullLeft + theButton addClass bootstrap3 buttonDefault ].	button onTrigger		evaluate: [ currentStepIndex := self previousStepIndex ];		render: currentStepView.	^ button!

previousStepIndex	^ currentStepIndex - 1 max: 1!

previousStepView	^ stepViews at: self previousStepIndex!

renderCurrentStepOn: aCanvas	| view |	view := stepViews at: currentStepIndex.	aCanvas heading: view shortName.	aCanvas div with: view applying: [ :div | div addClass smalltalks2017 stepContent ].	self renderStepButtonsOn: aCanvas!

renderStepButtonsOn: aCanvas	aCanvas div		with: [ currentStepIndex = 1				ifFalse: [ aCanvas render: self previousStepButton ].			currentStepIndex = stepViews size				ifFalse: [ aCanvas render: self nextStepButton ] ]		applying: [ :div | div addClass smalltalks2017 stepButtonContainer ]!

requiredLibraries	" Libraries added here are not considered until the server is restarted.	  Including a library with a favicon.ico will automatically use it.	"	^ {Smalltalks2017FileMetadataLibrary default.	( self deploymentMode libraryFor: SpinKitMetadataLibrary ) default}! !
!Smalltalks2017Presentation categoriesFor: #componentSupplierForApplication!accessing!public! !
!Smalltalks2017Presentation categoriesFor: #contentView!accessing!public! !
!Smalltalks2017Presentation categoriesFor: #initializeCurrentStepView!initialization!public! !
!Smalltalks2017Presentation categoriesFor: #initializeStepViews!initialization!public! !
!Smalltalks2017Presentation categoriesFor: #initialRequest:!initialization!public! !
!Smalltalks2017Presentation categoriesFor: #jQueryLibrary!accessing!public! !
!Smalltalks2017Presentation categoriesFor: #nextStepButton!private / accessing!public! !
!Smalltalks2017Presentation categoriesFor: #nextStepIndex!private / accessing!public! !
!Smalltalks2017Presentation categoriesFor: #nextStepView!private / accessing!public! !
!Smalltalks2017Presentation categoriesFor: #previousStepButton!private / accessing!public! !
!Smalltalks2017Presentation categoriesFor: #previousStepIndex!private / accessing!public! !
!Smalltalks2017Presentation categoriesFor: #previousStepView!private / accessing!public! !
!Smalltalks2017Presentation categoriesFor: #renderCurrentStepOn:!private / rendering!public! !
!Smalltalks2017Presentation categoriesFor: #renderStepButtonsOn:!private / rendering!public! !
!Smalltalks2017Presentation categoriesFor: #requiredLibraries!public!updating! !

!Smalltalks2017Presentation class methodsFor!

applicationTitle	^ 'Willow 101'!

handlerName	^ 'willow101'!

registerAsApplicationUsing: deploymentModeClass	| application |	application := super registerAsApplicationUsing: deploymentModeClass.	application configuration at: #maximumRelativeAge put: 3600.	application cache: application createCache.	^ application! !
!Smalltalks2017Presentation class categoriesFor: #applicationTitle!accessing!public! !
!Smalltalks2017Presentation class categoriesFor: #handlerName!accessing!public! !
!Smalltalks2017Presentation class categoriesFor: #registerAsApplicationUsing:!private/utility!public! !

