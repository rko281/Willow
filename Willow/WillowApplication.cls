"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #WillowApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Willow'
	classInstanceVariableNames: ''!
WillowApplication guid: (GUID fromString: '{81886630-cc91-4b8d-83f9-fd68c4699099}')!
WillowApplication comment: 'I''m a basic Willow application providing some guidance to the developers.'!
!WillowApplication categoriesForClass!Willow-Applications! !
!WillowApplication methodsFor!

applicationTitle		^self class applicationTitle  !

componentSupplierForApplication	self subclassResponsibility!

contentView	^ self subclassResponsibility!

deploymentMode	^ (self session preferenceAt: WillowSystemConfiguration deploymentModeClassKey ifAbsent: [ WAApplicationInDevelopment ]) new!

initialRequest: aRequest	self session startUpApplicationContextFor: self!

jQueryLibrary	^ self subclassResponsibility!

language	^ WALocale fromString: (self session preferenceAt: WillowSystemConfiguration languageKey ifAbsent: [ 'en' ])!

renderContentOn: aCanvas	aCanvas render: self contentView.	self renderDialogAndNotificationSectionsOn: aCanvas!

renderDialogAndNotificationSectionsOn: aCanvas	"Render dialog and notification sections. These are needed for the dialog and notification support."	aCanvas div		id: Constants >> #willow >> #dialogSectionName;		apply: [ :div | div addClass dialogContainer ].	aCanvas div id: Constants >> #willow >> #notificationSectionName!

requiredLibraries	"This hook provides an easy way to include additional libraries to the ones declared by the component supplier"	^ #()!

updateRoot: aRoot	super updateRoot: aRoot.	aRoot title: self applicationTitle.	aRoot htmlAttributes at: 'lang' put: self language greaseString.	self jQueryLibrary updateRoot: aRoot.	WillowNamespaceFileMetadataLibrary default updateRoot: aRoot.	self componentSupplier updateRoot: aRoot.	self requiredLibraries do: [ :library | library updateRoot: aRoot ]! !
!WillowApplication categoriesFor: #applicationTitle!accessing!public! !
!WillowApplication categoriesFor: #componentSupplierForApplication!accessing!public! !
!WillowApplication categoriesFor: #contentView!accessing!public! !
!WillowApplication categoriesFor: #deploymentMode!accessing!public! !
!WillowApplication categoriesFor: #initialRequest:!hooks!public! !
!WillowApplication categoriesFor: #jQueryLibrary!accessing!public! !
!WillowApplication categoriesFor: #language!accessing!public! !
!WillowApplication categoriesFor: #renderContentOn:!public!rendering! !
!WillowApplication categoriesFor: #renderDialogAndNotificationSectionsOn:!private / rendering!public! !
!WillowApplication categoriesFor: #requiredLibraries!accessing!public! !
!WillowApplication categoriesFor: #updateRoot:!public!updating! !

!WillowApplication class methodsFor!

applicationTitle		^self subclassResponsibility !

errorHandlerFactory	"By default we don't do anything special with the AJAX errors, but my subclasses can specify some specific handling."	^ AjaxAwareErrorHandlerFactory new!

handlerName	^self subclassResponsibility !

installFileHandlerAccordingTo: theDeploymentMode	WADeploymentAwareFileHandler installAsFileHandlerAccordingTo: theDeploymentMode!

registerAsApplicationUsing: deploymentModeClass	| application |	application := WAAdmin register: self asApplicationAt: self handlerName.	application preferenceAt: #sessionClass put: self sessionClass.	application filter configuration at: #exceptionHandler put: self errorHandlerFactory.	application configuration addParent: WillowSystemConfiguration instance.	application preferenceAt: WillowSystemConfiguration deploymentModeClassKey put: deploymentModeClass.	self installFileHandlerAccordingTo: deploymentModeClass new.	^ application!

registerAsDeployedApplication	^ self registerAsApplicationUsing: WAApplicationDeployed!

registerAsDevelopmentApplication	^ self registerAsApplicationUsing: WAApplicationInDevelopment!

sessionClass	^ WillowSession!

unregisterFromApplications	WAEnvironment registerDefaultRequestHandlers.	^ WAAdmin unregister: self handlerName! !
!WillowApplication class categoriesFor: #applicationTitle!accessing!public! !
!WillowApplication class categoriesFor: #errorHandlerFactory!accessing!public! !
!WillowApplication class categoriesFor: #handlerName!accessing!public! !
!WillowApplication class categoriesFor: #installFileHandlerAccordingTo:!private/utility!public! !
!WillowApplication class categoriesFor: #registerAsApplicationUsing:!private/utility!public! !
!WillowApplication class categoriesFor: #registerAsDeployedApplication!public!utility! !
!WillowApplication class categoriesFor: #registerAsDevelopmentApplication!public!utility! !
!WillowApplication class categoriesFor: #sessionClass!accessing!public! !
!WillowApplication class categoriesFor: #unregisterFromApplications!public!utility! !

