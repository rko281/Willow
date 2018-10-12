"Filed out from Dolphin Smalltalk 7"!

PresentationStepWebView subclass: #PlaygroundApplicationsStepWebView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PlaygroundApplicationsStepWebView guid: (GUID fromString: '{ab73bcd1-88c6-4bb5-93d1-bad2aa6a3d6e}')!
PlaygroundApplicationsStepWebView comment: 'I''m a step showing a list of example applications.'!
!PlaygroundApplicationsStepWebView categoriesForClass!Willow-Playground-Smalltalks2017-WebViews! !
!PlaygroundApplicationsStepWebView methodsFor!

description	^ 'Let''s see what you can do with Willow'!

liveDocumentationAnchor	^ self componentSupplier asynchronicLinkLabeled: 'Open the Live Documentation!!' applying: (OpenLocationCommand forNewBrowsingContextNavigatingTo: WPLiveDocumentation handlerName)!

renderContentOn: aCanvas	self		renderPanelWrapping: [ :canvas | 			canvas				paragraph: self testRunnerAnchor;				paragraph: self liveDocumentationAnchor ]		on: aCanvas!

shortName	^ 'Some Examples'!

testRunnerAnchor	^ self componentSupplier		asynchronicLinkLabeled: 'Open the Test Runner!!'		applying: (OpenLocationCommand forNewBrowsingContextNavigatingTo:WPTestRunner handlerName)! !
!PlaygroundApplicationsStepWebView categoriesFor: #description!accessing!public! !
!PlaygroundApplicationsStepWebView categoriesFor: #liveDocumentationAnchor!private/accessing!public! !
!PlaygroundApplicationsStepWebView categoriesFor: #renderContentOn:!public!rendering! !
!PlaygroundApplicationsStepWebView categoriesFor: #shortName!accessing!public! !
!PlaygroundApplicationsStepWebView categoriesFor: #testRunnerAnchor!private/accessing!public! !

