"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #BootstrapModalWebView
	instanceVariableNames: 'footer dialog header'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
BootstrapModalWebView guid: (GUID fromString: '{978ea95e-8e8e-46dd-a213-1abac2e585a9}')!
BootstrapModalWebView comment: 'I represent a Bootstrap Modal.'!
!BootstrapModalWebView categoriesForClass!Willow-Bootstrap-WebViews! !
!BootstrapModalWebView methodsFor!

contentWrapping: aBodyView	^ GenericContainerWebView		wrapping: [ :canvas | 			canvas render: header.			canvas div with: aBodyView applying: [ :div | div addClass bootstrap modalBody ].			canvas render: footer ]		applying: [ :container | container addClass bootstrap modalContent ]!

documentWrapping: content applying: aDocumentCommand	^ GenericContainerWebView wrapping: content applying: [ :container :constants | container addClass bootstrap modalDialog + (container setARIARoleTo: #document) + aDocumentCommand ]!

initializeWithHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andToDocument: aModalDocumentCommand	header := aBootstrapModalHeader.	footer := aBootstrapModalFooter.	dialog := GenericContainerWebView		wrapping: (self documentWrapping: (self contentWrapping: aBodyView) applying: aModalDocumentCommand)		applying: [ :container :constants | container addClass bootstrap modal + container disableTabCycle + (container setARIARoleTo: #dialog) + aDialogCommand ]!

onCloseTrigger	^ CombinedWebInteractionInterpreter		combining:			{header onCloseTrigger.			footer onCloseTrigger}!

onTrigger	"The footer contains the buttons that can trigger some action (except the close button, but the modal have specific events for this action)"	^ footer onTrigger!

renderContentOn: aCanvas	aCanvas render: dialog! !
!BootstrapModalWebView categoriesFor: #contentWrapping:!private! !
!BootstrapModalWebView categoriesFor: #documentWrapping:applying:!private! !
!BootstrapModalWebView categoriesFor: #initializeWithHeader:content:footer:applyingToDialog:andToDocument:!initialize!public! !
!BootstrapModalWebView categoriesFor: #onCloseTrigger!Configuring!public! !
!BootstrapModalWebView categoriesFor: #onTrigger!Configuring!public! !
!BootstrapModalWebView categoriesFor: #renderContentOn:!public!rendering! !

!BootstrapModalWebView class methodsFor!

withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter	^ self		withHeader: aBootstrapModalHeader		content: aBodyView		footer: aBootstrapModalFooter		applyingToDialog: [ :dialog |  ]		andModalDocument: [ :document |  ]!

withHeader: aBootstrapModalHeader content: aBodyView footer: aBootstrapModalFooter applyingToDialog: aDialogCommand andModalDocument: aModalDocumentCommand	^ self new		initializeWithHeader: aBootstrapModalHeader		content: aBodyView		footer: aBootstrapModalFooter		applyingToDialog: aDialogCommand		andToDocument: aModalDocumentCommand! !
!BootstrapModalWebView class categoriesFor: #withHeader:content:footer:!Instance Creation!public! !
!BootstrapModalWebView class categoriesFor: #withHeader:content:footer:applyingToDialog:andModalDocument:!Instance Creation!public! !

