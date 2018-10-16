"Filed out from Dolphin Smalltalk 7"!

WillowComponentBuilder subclass: #BootstrapModalBuilder
	instanceVariableNames: 'headerBinding content footerCloseButton additionalFooterButtons dialogCommand'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalBuilder guid: (GUID fromString: '{50d19e57-aa6e-4d5a-b885-20c14030bca6}')!
BootstrapModalBuilder comment: 'I''m a builder easing the creation of bootstrap modals.'!
!BootstrapModalBuilder categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapModalBuilder methodsFor!

addFooterButton: aButton	additionalFooterButtons add: aButton!

applyingToDialog: aDialogCommand	dialogCommand := dialogCommand + aDialogCommand!

beSelfCleaning	self applyingToDialog: BootstrapSelfCleaningModalCommand new!

buildApplying: aDocumentCommand	^ BootstrapModalWebView		withHeader: headerBinding content		content: content		footer: (BootstrapModalFooterWebView containing: additionalFooterButtons andCloseButton: footerCloseButton)		applyingToDialog: dialogCommand		andModalDocument: aDocumentCommand!

closeButtonLabeled: aRenderable applying: aCommand	footerCloseButton := BootstrapModalFooterWebView closeButtonLabeled: aRenderable applying: aCommand!

dismissableHeaderTitled: aRenderable	headerBinding := Binding to: (BootstrapModalHeaderWebView dismissableTitled: aRenderable)!

headerTitled: aRenderable	headerBinding := Binding to: (BootstrapModalHeaderWebView titled: aRenderable)!

initialize	super initialize.	headerBinding := Binding undefinedExplainedBy: 'Missing header definition'.	content := ''.	footerCloseButton := BootstrapModalFooterWebView		closeButtonLabeled: 'Close'		applying: [  ].	additionalFooterButtons := OrderedCollection new.	dialogCommand := [  ] asWebComponentCommand!

wrapping: theContent	content := theContent ! !
!BootstrapModalBuilder categoriesFor: #addFooterButton:!Configuring!public! !
!BootstrapModalBuilder categoriesFor: #applyingToDialog:!Configuring!public! !
!BootstrapModalBuilder categoriesFor: #beSelfCleaning!Configuring!public! !
!BootstrapModalBuilder categoriesFor: #buildApplying:!building!public! !
!BootstrapModalBuilder categoriesFor: #closeButtonLabeled:applying:!Configuring!public! !
!BootstrapModalBuilder categoriesFor: #dismissableHeaderTitled:!Configuring!public! !
!BootstrapModalBuilder categoriesFor: #headerTitled:!Configuring!public! !
!BootstrapModalBuilder categoriesFor: #initialize!initialization!public! !
!BootstrapModalBuilder categoriesFor: #wrapping:!Configuring!public! !

